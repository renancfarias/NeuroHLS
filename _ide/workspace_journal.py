# 2025-10-04T18:06:32.939679700
import vitis

client = vitis.create_client()
client.set_workspace(path="NeuroHLS")

comp = client.get_component(name="snn_n-mnist_resource_opt")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.create_hls_component(name = "snn_n-mnist_latency_opt",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="snn_n-mnist_latency_opt")
comp.run(operation="C_SIMULATION")

