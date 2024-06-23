library(huge)
library(MASS)
library(dplyr)

# Set parameters
p <- 200      # Number of nodes
n <- 100      # Sample number
prob <- 1 - 0.9   # Sparsity Rate
num_matrices <- 200 # Number of precision matrices and sample sets
sample_size <- 100   # Number of samples for each multivariate Gaussian vector

# Initialize lists to store precision matrices and samples
adj_matrices <- list()
samples <- list()

# Generate precision matrices and corresponding samples
for (i in 1:num_matrices) {
  # Generate random network with specified sparsity rate
  data <- huge.generator(n = n, d = p, graph = "random", prob = prob)
  adj = data$theta
  sample = data$data
  write.csv2(as.matrix(adj), file=paste("../NetworkDataSets/HUGE/Adjacency_Matrix_", i, '.csv', sep = ''), row.names =  F)
  write.csv2(sample, file=paste("../NetworkDataSets/HUGE/Sample_", i, '.csv', sep = ''), row.names = F)
  
}
