import env,plotting
import numpy as np
import math

def get_matrix(obstacles_set):
    obstacles = list(obstacles_set)
    matrix = np.zeros((100,100))
    
    for obs in obstacles:
        matrix[int(obs[0])][int(obs[1])] = 1
    
    return matrix

def main():
    plot = plotting.Plotting()
    plot.plot_grid("Map")

    adj_matrix = get_matrix(plot.ret_map())

if __name__ == '__main__':
    main()
    