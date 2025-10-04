#include <deque>
#include <iostream>
#include <vector>
#include "layer.h"

const int PACKAGE = 100;
const int NUM_STEPS = 10;
const int NUM_SAMPLES = 1000;

using namespace std;


int main (int argc, char **argv)
{   
    // load inputs from txt file
    bit_t input_data[PACKAGE][NUM_STEPS][NUM_INPUTS];
    int target_data[PACKAGE];
    int total_correct=0;
    // open file with inputs
    std::ifstream input_file("n-mnist_testset_data.txt");
    if (!input_file.is_open()) {
        std::cerr << "Error opening input file." << std::endl;
        return 1;
    }

    // open file with targets
    std::ifstream targets_file("n-mnist_testset_targets.txt");
    if (!targets_file.is_open()) {
        std::cerr << "Error opening targets file." << std::endl;
        return 1;
    }

    const int total_batch= NUM_SAMPLES/PACKAGE;
    cout<<"Number of batch to process:"<<total_batch<<endl;
    for(int number_batch=0;number_batch<total_batch;number_batch++){

        cout<<"BATCH number: "<< (number_batch+1)<<endl;
        
        for (int i = 0; i < PACKAGE; i++) {
            for (int j = 0; j < NUM_STEPS; j++) {
                for (int k = 0; k < NUM_INPUTS; k++) {
                    input_file >> input_data[i][j][k];
                }
            }
        }

        // close the input file


        for (int i = 0; i < PACKAGE; i++) {
            targets_file >> target_data[i];
        }

        int output_data[NUM_SAMPLES];

        for (int i = 0; i < PACKAGE; i++)
        {
            bit_t output [NUM_STEPS][num_neurons[1]];
            bit_t step_input[NUM_INPUTS];
            hls::stream<neuron_idx_t> spike_index_stream;

            for (int j = 0; j < NUM_STEPS; j++)
            {
                for (int k = 0; k < NUM_INPUTS; k++)
                {
                    if (input_data[i][j][k] > 0.0) 
                    {                    
                        spike_index_stream.write(k);
                    }
                }
                snn_mnist_hls(spike_index_stream, output[j]);
                // snn_mnist_hls(spike_index_stream, output[j]);
            } 
            
            int count [num_neurons[1]] = {0};
            for (int j = 0; j < NUM_STEPS; j++)
            {
                for (int k = 0; k < num_neurons[1]; k++)
                {
                    if (output[j][k] > 0)
                    {
                        count[k]++;
                    }
                }
            }

            // find the neuron with the maximum count
            int max_count = 0;
            int max_index = 0;
            for (int j = 0; j < num_neurons[1]; j++) {
                if (count[j] > max_count) {
                    max_count = count[j];
                    max_index = j;
                }
            }

            output_data[i] = max_index;
        }


        // calculate the accuracy
        int correct = 0;
        for (int i = 0; i < PACKAGE; i++) {
            if (output_data[i] == target_data[i]) {
                correct++;
                total_correct++;
            }
        }
        float accuracy_batch = (float) correct / PACKAGE * 100.0;

        cout << "--------------" << endl;
        cout << "Result Batch "<<(number_batch+1)<<"/"<< total_batch << endl;
        cout << "Total Correct Batch: " << correct << endl;
        cout << "Total Tested Batch: " << PACKAGE << endl << endl;
        cout << "Accuracy Batch: " << accuracy_batch << "%" << endl;
        cout << "--------------" << endl;

    }
    float accuracy = (float) total_correct / NUM_SAMPLES * 100.0;

    cout << "--------------" << endl;
    cout << "Total Correct: " << total_correct << endl;
    cout << "Total Tested: " << NUM_SAMPLES << endl << endl;

    cout << "Accuracy: " << accuracy << "%" << endl;
    cout << "--------------" << endl;
    targets_file.close();
    input_file.close();

    return 0;
}