# 2025-10-04T17:42:54.615588700
import vitis

client = vitis.create_client()
client.set_workspace(path="NeuroHLS")

comp = client.create_hls_component(name = "snn_n-mnist_resource_opt",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="snn_n-mnist_resource_opt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

