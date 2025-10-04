# NeuroHLS Vitis Workspace

This workspace contains two example implementations of the NeuroHLS framework, designed for use with Xilinx Vitis HLS. The provided code was used to generate the results presented in my paper titled "NeuroHLS: A Flexible Framework for Accelerating
SNNs on FPGAs".

## Structure

- `snn_n-mnist_latency_opt`: Vitis HLS component optimized for latency.
- `snn_n-mnist_resource_opt`: Vitis HLS component optimized for resource usage.
- `train_SNN_NMNIST.ipynb`: Jupyter notebook for training the SNN model and generating dataset files and weights.
- `dataset/`: Contains the generated `.txt` files for inputs and targets.
- `weights/`: Contains the generated header file with model weights.

## Reproducing Results

To reproduce the results from the paper:

1. **Run the training notebook**  
	Execute `train_SNN_NMNIST.ipynb` to generate the required dataset input/output files (`.txt`) and the weights header file (`.h`).

2. **Build and simulate the Vitis components**  
	Open this repository as a worksáce in Vitis HLS to synthesize, simulate, and analyze the SNN implementations.

## Notes

- The workspace is organized to facilitate experimentation with both latency-optimized and resource-optimized SNN designs.
- All results presented in the article were generated using the code and configurations provided in this repository. Please note that due to random shuffling of the dataset samples during dataset generation in the training notebook, your results may differ slightly from those reported in the paper.
