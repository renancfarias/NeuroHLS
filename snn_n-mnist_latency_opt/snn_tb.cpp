#include <iostream>
#include <fstream>
#include <string>

#include "snn.h"
#include "parameters.h"

using namespace std;

constexpr int PACKAGE = 100;
constexpr int NUM_STEPS = 10;
constexpr int NUM_SAMPLES = 1000;

const string input_file_name = "n-mnist_testset_data.txt";
const string targets_file_name = "n-mnist_testset_targets.txt";

int main (int argc, char **argv)
{   
    bit_t input_data[PACKAGE][NUM_STEPS][net::num_inputs];
    int target_data[PACKAGE];
    int total_correct = 0;

    ifstream input_file(input_file_name);

    if (!input_file.is_open())
    {
        cerr << "Error opening input file." << endl << endl;
        return 1;
    }

    ifstream targets_file(targets_file_name);

    if (!targets_file.is_open())
    {
        std::cerr << "Error opening targets file." << std::endl;
        return 1;
    }

    const int total_batches = NUM_SAMPLES / PACKAGE;

    cout << "Number of batches to process: " << total_batches << endl;
    
    for(int number_batch = 0; number_batch < total_batches; number_batch++)
    {
        cout << "BATCH "<< (number_batch + 1) << "/" << total_batches << endl;
        
        for (int i = 0; i < PACKAGE; i++)
        {
            for (int j = 0; j < NUM_STEPS; j++)
            {
                for (int k = 0; k < net::num_inputs; k++)
                {
                    input_file >> input_data[i][j][k];
                }
            }
        }

        for (int i = 0; i < PACKAGE; i++)
        {
            targets_file >> target_data[i];
        }

        int output_data[NUM_SAMPLES];

        for (int i = 0; i < PACKAGE; i++)
        {
            bit_t output [NUM_STEPS][net::num_neurons[1]];
            bit_t step_input[net::num_inputs];

            for (int j = 0; j < NUM_STEPS; j++)
            {
                for (int k = 0; k < net::num_inputs; k++)
                {
                    if (input_data[i][j][k] > 0.0)
                    {
                        step_input[k] = 1;
                    }
                    else
                    {
                        step_input[k] = 0;
                    }
                }

                snn_mnist_hls(step_input, output[j]);
            } 
            
            int count [net::num_neurons[1]] = {0};
            for (int j = 0; j < NUM_STEPS; j++)
            {
                for (int k = 0; k < net::num_neurons[1]; k++)
                {
                    if (output[j][k] > 0)
                    {
                        count[k]++;
                    }
                }
            }

            int max_count = 0;
            int max_index = 0;

            for (int j = 0; j < net::num_neurons[1]; j++)
            {
                if (count[j] > max_count) 
                {
                    max_count = count[j];
                    max_index = j;
                }
            }

            output_data[i] = max_index;
        }

        int correct = 0;
        for (int i = 0; i < PACKAGE; i++)
        {
            if (output_data[i] == target_data[i])
            {
                correct++;
                total_correct++;
            }
        }

        float accuracy_batch = (float) correct / PACKAGE * 100.0;

        cout << "   Total Correct: " << correct << " (acc: " << accuracy_batch << "%)" << endl << endl;
    }

    float accuracy = (float) total_correct / NUM_SAMPLES * 100.0;

    // cout << "---------------------------" << endl;
    cout << "Total Correct: " << total_correct << endl;
    cout << "Total Tested: " << NUM_SAMPLES << endl << endl;

    cout << "Accuracy: " << accuracy << "%" << endl;
    cout << "---------------------------" << endl;

    targets_file.close();
    input_file.close();

    return 0;
}