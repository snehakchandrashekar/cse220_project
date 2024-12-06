# Two-Level Adaptive Branch Predictor Integration into Scarab Simulator

**Course:** CSE220 Computer Architecture - Fall 2024  
**Institution:** Baskin Engineering, UC Santa Cruz  
**Authors:** Sneha Kattepura Chandrashekar and Jayaraj J.

---

## Introduction

This project integrates a **Two-Level Adaptive Branch Predictor (T-LBP)** into the [Scarab](https://github.com/Litz-lab/scarab) simulator. The implementation is guided by the concepts and methodologies presented in the seminal paper:

> **Paper Reference:**  
> "Two-Level Adaptive Training Branch Prediction" by Tse-Yu Yeh and Yale N. Patt, Micro-24, 1991.

The Two-Level Adaptive Branch Predictor leverages both a Branch History Table (BHT) and a Pattern History Table (PHT) to make more informed branch predictions. By maintaining detailed global or per-address histories and mapping them to saturating counters in the PHT, this approach can achieve higher prediction accuracy than simpler schemes like GShare.

**Why T-LBP?**  
Conventional branch predictors often struggle with complex branch correlations. Two-Level Predictors capture rich historical context—either global or per-address—enabling more nuanced and accurate predictions, and thus reducing the costly pipeline flushes caused by mispredictions.

---

## Context and Course Association

**CSE220 Computer Architecture - Fall 2024** at UC Santa Cruz covers advanced CPU microarchitecture techniques. As part of the course assignments, we integrated T-LBP into Scarab, an industry-strength simulator. This hands-on project helps us understand the trade-offs between prediction accuracy, memory overhead, and simulation complexity.

---

## Implementation Overview

### T-LBP Variants

The Yeh and Patt paper introduces several two-level schemes:

- **GAg (Type=0):** Global history, single global PHT.
- **GAp (Type=1):** Global history, per-address PHTs.
- **PAg (Type=2):** Per-address history registers, global PHT.
- **PAp (Type=3):** Per-address history registers, per-address PHTs.

Each configuration balances complexity, memory usage, and accuracy differently. We chose multiple configurations (high-performance, balanced, and a low-performance variant for GAg) to understand these trade-offs thoroughly.

---

## Key Parameters

### `map_cycles=5` and `issue_width=4`
- The predictor must operate efficiently within 5 cycles of mapping latency and support 4-wide issue. These constraints influence the choice of BHT/PHT sizes and counter bits to ensure predictions can be made on time.

### `tl_bht_entries` and `tl_bht_entry_bits`
- Control how many entries and how much history each BHT entry records.  
- Larger/more bits = more detail, but more memory and potentially longer access times.

### `tl_pht_entries` and `tl_pht_ctr_bits`
- Define PHT size and the number of bits per saturating counter.  
- More entries reduce aliasing, and more bits (up to 3) increase accuracy granularity.  
- We avoid going beyond 3 bits to prevent diminishing returns.

---

## Selected Configurations

We integrated a set of configurations that cover all four T-LBP variants at high-performance and balanced resource levels, plus an additional low-performance configuration for GAg. All share `map_cycles=5` and `issue_width=4` for consistency.

**All configurations use `--bp_mech=two_level` except the GShare baseline.**

```json
{
    "gshare_baseline": "--map_cycles=5 --issue_width=4 --bp_mech=gshare",

    "two_level_gag_high_perf":   "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=0 --tl_bht_entries=2048 --tl_bht_entry_bits=12 --tl_pht_entries=4096 --tl_pht_ctr_bits=3",
    "two_level_gag_balanced":    "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=0 --tl_bht_entries=1536 --tl_bht_entry_bits=11 --tl_pht_entries=3072 --tl_pht_ctr_bits=2",
    "two_level_gag_low_perf":    "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=0 --tl_bht_entries=1024 --tl_bht_entry_bits=10 --tl_pht_entries=2048 --tl_pht_ctr_bits=2",

    "two_level_gap_high_perf":   "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=1 --tl_bht_entries=2048 --tl_bht_entry_bits=12 --tl_pht_entries=4096 --tl_pht_ctr_bits=3",
    "two_level_gap_balanced":    "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=1 --tl_bht_entries=1536 --tl_bht_entry_bits=11 --tl_pht_entries=3072 --tl_pht_ctr_bits=2",

    "two_level_pag_high_perf":   "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=2 --tl_bht_entries=2048 --tl_bht_entry_bits=12 --tl_pht_entries=4096 --tl_pht_ctr_bits=3",
    "two_level_pag_balanced":    "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=2 --tl_bht_entries=1536 --tl_bht_entry_bits=11 --tl_pht_entries=3072 --tl_pht_ctr_bits=2",

    "two_level_pap_high_perf":   "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=3 --tl_bht_entries=2048 --tl_bht_entry_bits=12 --tl_pht_entries=4096 --tl_pht_ctr_bits=3",
    "two_level_pap_balanced":    "--map_cycles=5 --issue_width=4 --bp_mech=two_level --bp_two_level_type=3 --tl_bht_entries=1536 --tl_bht_entry_bits=11 --tl_pht_entries=3072 --tl_pht_ctr_bits=2"
}
```

## Rationale Behind Parameters

- **High-Performance:**  
  Larger BHT/PHT sizes and longer histories (12 bits) with 3-bit counters for maximum accuracy.

- **Balanced:**  
  Slightly reduced BHT/PHT sizes, 11-bit histories, and 2-bit counters for efficiency.

- **Low-Performance (GAg only):**  
  Even smaller BHT/PHT and shorter history to see how performance scales down.

---

### Pipeline Integration:

1. **Fetch Stage:**  
   Instructions are fetched, and if the current PC corresponds to a branch, we consult the BHT (global or per-address).

2. **History Access:**  
   - **GAg/GAp:** Use global history bits.  
   - **PAg/PAp:** Retrieve per-address history for that specific branch.

3. **PHT Lookup:**  
   The selected history (e.g., a 12-bit pattern) indexes into the PHT.  
   We retrieve a saturating counter (2 or 3 bits). A counter above the midpoint suggests a "taken" prediction.

4. **Prediction and Issue:**  
   The prediction must be provided within `map_cycles=5`. With `issue_width=4`, the predictor must handle multiple predictions per cycle efficiently.

5. **Update On Branch Resolution:**  
   Once the branch outcome is known:  
   - Update the BHT (shift in the actual outcome).  
   - Update the PHT counter (increment if taken, decrement if not).  
   Speculative states may be rolled back if mispredictions occur.

---

## Memory vs. Accuracy Trade-Off

### Memory Considerations:
- Larger BHT and PHT sizes consume more memory but reduce aliasing and increase accuracy.  
- Since we have `issue_width=4`, more accurate prediction reduces pipeline stalls.

### Counter Bits (Capped at 3):
- 2-bit counters are standard, 3-bit counters add finer granularity.  
- Going beyond 3 bits yields minimal returns.

### History Length:
- 10 to 12 bits capture enough branch behavior for complex patterns.  
- Longer histories (12 bits) improve accuracy for correlation-heavy workloads but add complexity.

---

## Testing and Evaluation

### Benchmark Choices:
- **SPEC CPU:** Diverse branch patterns.  
- **Microbenchmarks:** Stress loops or indirect branches.  
- **Real-World Apps:** Validate real scenario performance.

### Metrics:
- **Branch Prediction Accuracy:** Higher is better.  
- **Misprediction Rate:** Lower is better.  
- **Memory Usage:** Track overhead, especially in high-performance modes.  
- **Runtime Impact:** Ensure complex predictors do not degrade simulation speed significantly.

### Comparisons:
- Compare T-LBP configurations against the `gshare_baseline`.  
- Evaluate how balanced and low-performance modes trade off accuracy for resource savings.  
- Identify workloads where per-address schemes (GAp, PAg, PAp) significantly outperform global-only methods (GAg).

---

## Conclusion

By implementing these Two-Level Adaptive Branch Predictor configurations within Scarab, we can thoroughly explore how different histories, table sizes, and counter bits affect branch prediction accuracy and overhead. This directly relates to concepts taught in CSE220, providing hands-on understanding of advanced CPU microarchitecture techniques.

### Key Takeaways:
- The chosen parameters and configurations allow a deep exploration of the T-LBP design space.  
- Limiting `tl_pht_ctr_bits` to 2 or 3 strikes a practical balance.  
- Comparing GAg, GAp, PAg, and PAp variants reveals how detailed history and per-address tracking impact accuracy.

---

## Next Steps

1. Run simulations across multiple benchmarks.  
2. Analyze accuracy, misprediction rate, and resource usage.  
3. Potentially fine-tune parameters or explore dynamic/adaptive schemes if time and scope permit.
