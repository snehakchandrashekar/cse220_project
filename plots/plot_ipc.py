import os
import json
import argparse
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import math

plt.rc('font', size=14)


def read_descriptor_from_json(descriptor_filename):
    """Read the descriptor data from a JSON file."""
    try:
        with open(descriptor_filename, 'r') as json_file:
            descriptor_data = json.load(json_file)
        return descriptor_data
    except FileNotFoundError:
        print(f"Error: File '{descriptor_filename}' not found.")
        return None
    except json.JSONDecodeError as e:
        print(f"Error decoding JSON in file '{descriptor_filename}': {e}")
        return None


def get_IPC(descriptor_data, sim_path, output_dir):
    benchmarks_org = descriptor_data["workloads_list"].copy()
    benchmarks = []
    ipc = {}

    try:
        for config_key in descriptor_data["configurations"].keys():
            ipc_config = []
            avg_IPC_config = 0.0
            for benchmark in benchmarks_org:
                benchmark_name = benchmark.split("/")
                exp_path = f"{sim_path}/{benchmark}/{descriptor_data['experiment']}/"
                IPC = 0
                with open(f"{exp_path}{config_key}/memory.stat.0.csv") as f:
                    lines = f.readlines()
                    for line in lines:
                        if 'Periodic IPC' in line:
                            tokens = [x.strip() for x in line.split(',')]
                            IPC = float(tokens[1]) if not math.isnan(float(tokens[1])) else 0
                            break

                avg_IPC_config += IPC
                if len(benchmarks_org) > len(benchmarks):
                    benchmarks.append(benchmark_name)

                ipc_config.append(IPC)

            num = len(benchmarks)
            ipc_config.append(avg_IPC_config / num)
            ipc[config_key] = ipc_config

        benchmarks.append('Avg')
        plot_grouped_data(benchmarks, ipc, 'IPC', 'IPC for SPEC 2017 benchmarks', f"{output_dir}/FigureA")
    except Exception as e:
        print(e)


def get_BP_Miss_Rate(descriptor_data, sim_path, output_dir):
    benchmarks_org = descriptor_data["workloads_list"].copy()
    benchmarks = []
    bp_miss_rate = {}

    try:
        for config_key in descriptor_data["configurations"].keys():
            bp_miss_rate_config = []
            avg_BP_miss_rate_config = 0.0
            for benchmark in benchmarks_org:
                benchmark_name = benchmark.split("/")
                exp_path = f"{sim_path}/{benchmark}/{descriptor_data['experiment']}/"
                BP_miss_rate = 0
                with open(f"{exp_path}{config_key}/bp.stat.0.csv") as f:
                    lines = f.readlines()
                    for line in lines:
                        if 'BP_ON_PATH_MISPREDICT_pct' in line:
                            tokens = [x.strip() for x in line.split(',')]
                            BP_miss_rate = float(tokens[1]) if not math.isnan(float(tokens[1])) else 0
                            break

                avg_BP_miss_rate_config += BP_miss_rate
                if len(benchmarks_org) > len(benchmarks):
                    benchmarks.append(benchmark_name)

                bp_miss_rate_config.append(BP_miss_rate)

            num = len(benchmarks)
            bp_miss_rate_config.append(avg_BP_miss_rate_config / num)
            bp_miss_rate[config_key] = bp_miss_rate_config

        benchmarks.append('Avg')
        plot_grouped_data(benchmarks, bp_miss_rate, 'BP Miss Rate (%)', 'Branch Predictor Miss Rate for SPEC 2017 benchmarks', f"{output_dir}/FigureD")
    except Exception as e:
        print(e)


def plot_grouped_data(benchmarks, data, ylabel_name, title_name, fig_name, ylim=None):
    """Generates grouped bar plots with workloads and configurations grouped for clarity."""
    workloads = benchmarks[:-1]  # Exclude 'Avg'
    avg_data = {key: [data[key][-1]] for key in data.keys()}  # Extract 'Avg' data for a separate plot

    # Plot each workload separately
    for i, workload in enumerate(workloads):
        workload_data = {key: [data[key][i]] for key in data.keys()}
        plot_individual_grouped_bar(
            [workload], workload_data, ylabel_name, f"{title_name} - {workload}", f"{fig_name}_{workload}.png", ylim
        )

    # Plot the averages as a separate figure
    plot_individual_grouped_bar(
        ['Avg'], avg_data, ylabel_name, f"{title_name} - Average", f"{fig_name}_Avg.png", ylim
    )


# def plot_individual_grouped_bar(benchmarks, data, ylabel_name, title_name, fig_name, ylim=None):
#     """Helper function to plot individual grouped bar plots."""
#     colors = [
#         '#800000', '#911eb4', '#4363d8', '#f58231', '#3cb44b', '#46f0f0',
#         '#f032e6', '#bcf60c', '#fabebe', '#e6beff'
#     ]
#     ind = np.arange(len(benchmarks))
#     width = 0.15  # Adjust width for better fit
#     fig, ax = plt.subplots(figsize=(8, 4.4), dpi=100)
#     num_keys = len(data.keys())
#
#     for idx, (key, values) in enumerate(data.items()):
#         hatch = '///' if idx % 2 == 0 else '\\\\'
#         ax.bar(
#             ind + (idx - num_keys / 2) * width,
#             values,
#             width=width,
#             fill=False,
#             hatch=hatch,
#             color=colors[idx % len(colors)],
#             edgecolor=colors[idx % len(colors)],
#             label=key,
#         )
#
#     ax.set_xlabel("Benchmarks")
#     ax.set_ylabel(ylabel_name)
#     ax.set_title(title_name)
#     ax.set_xticks(ind)
#     ax.set_xticklabels(benchmarks, rotation=30, ha='right')
#     ax.grid(axis='x', linestyle='--', alpha=0.7)
#     if ylim:
#         ax.set_ylim(ylim)
#     ax.legend(loc="best", ncols=2)
#     fig.tight_layout()
#     plt.savefig(fig_name, format="png", bbox_inches="tight")
#     plt.close(fig)
def plot_individual_grouped_bar(benchmarks, data, ylabel_name, title_name, fig_name, ylim=None):
    """Helper function to plot individual grouped bar plots with improved layout."""
    colors = [
        '#800000', '#911eb4', '#4363d8', '#f58231', '#3cb44b', '#46f0f0',
        '#f032e6', '#bcf60c', '#fabebe', '#e6beff'
    ]
    ind = np.arange(len(benchmarks))
    width = 0.15  # Adjust width for better fit
    fig, ax = plt.subplots(figsize=(12, 6), dpi=120)  # Increased size for clarity
    num_keys = len(data.keys())

    for idx, (key, values) in enumerate(data.items()):
        hatch = '///' if idx % 2 == 0 else '\\\\'
        ax.bar(
            ind + (idx - num_keys / 2) * width,
            values,
            width=width,
            fill=False,
            hatch=hatch,
            color=colors[idx % len(colors)],
            edgecolor=colors[idx % len(colors)],
            label=key,
        )

    ax.set_xlabel("Benchmarks", fontsize=14)
    ax.set_ylabel(ylabel_name, fontsize=14)
    ax.set_title(title_name, fontsize=16, pad=20)
    ax.set_xticks(ind)
    ax.set_xticklabels(benchmarks, rotation=30, ha='right', fontsize=12)
    ax.grid(axis='x', linestyle='--', alpha=0.7)
    if ylim:
        ax.set_ylim(ylim)
    # Adjust legend placement
    ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.15), ncol=3, fontsize=10)
    fig.tight_layout()
    plt.savefig(fig_name, format="png", bbox_inches="tight")
    plt.close(fig)


if __name__ == "__main__":
    # Create a parser for command-line arguments
    parser = argparse.ArgumentParser(description='Read descriptor file name')
    parser.add_argument('-o', '--output_dir', required=True, help='Output path. Usage: -o /home/$USER/plot')
    parser.add_argument('-d', '--descriptor_name', required=True, help='Experiment descriptor name. Usage: -d /home/$USER/lab1.json')
    parser.add_argument('-s', '--simulation_path', required=True, help='Simulation result path. Usage: -s /home/$USER/exp/simulations')

    args = parser.parse_args()
    descriptor_filename = args.descriptor_name

    descriptor_data = read_descriptor_from_json(descriptor_filename)
    plt.clf()
    get_IPC(descriptor_data, args.simulation_path, args.output_dir)
    plt.clf()
    get_BP_Miss_Rate(descriptor_data, args.simulation_path, args.output_dir)
