install.packages("igraph")

library(igraph)

# Function to create an adjacency list for a given undirected graph
create_adjacency_list <- function(graph) {
  adjacency_list <- lapply(V(graph), function(v) neighbors(graph, v))
  names(adjacency_list) <- V(graph)$name  # Set names of list elements to vertex names
  return(adjacency_list)
}

# Example: Create a sample undirected graph
g <- make_undirected_graph(c(1, 2, 1, 3, 2, 4, 3, 4))
V(g)$name <- as.character(1:vcount(g))  # Name vertices for easier reference

# Generate the adjacency list
adj_list <- create_adjacency_list(g)
print(adj_list)

# Function to add an edge between two vertices in the graph
add_edge <- function(graph, v1, v2) {
  if (!are_adjacent(graph, v1, v2)) {
    graph <- add_edges(graph, c(v1, v2))
  } else {
    message("Edge already exists between vertices ", v1, " and ", v2)
  }
  return(graph)
}

# Example: Add an edge between vertices 1 and 4
g <- add_edge(g, 1, 4)
print(g)

# Function to perform DFS traversal starting from a specific vertex
dfs_traversal <- function(graph, start_vertex) {
  result <- dfs(graph, root = start_vertex, unreachable = FALSE, order = TRUE)
  return(result$order)  # Return the order of vertices visited in DFS
}

# Example: Perform DFS starting from vertex 1
dfs_order <- dfs_traversal(g, start_vertex = 1)
print(dfs_order)

# Basic visualization of the undirected graph
plot(g, 
     vertex.label = V(g)$name,     # Label vertices with their names
     vertex.color = "lightblue",   # Set vertex color
     vertex.size = 30,             # Increase the size of vertices
     edge.color = "gray",          # Set edge color
     edge.width = 1.5,             # Set edge width
     main = "Undirected Graph Visualization")  # Title

# Highlight the DFS traversal path on the graph
dfs_order <- dfs_traversal(g, start_vertex = 1)  # Perform DFS and get order

# Set colors for vertices based on DFS order
V(g)$color <- "lightblue"
V(g)$color[dfs_order] <- rainbow(length(dfs_order))  # Assign a unique color to each node in DFS order

# Plot with DFS order highlighted
plot(g, 
     vertex.label = V(g)$name,
     vertex.size = 30,
     edge.color = "gray",
     edge.width = 1.5,
     main = "Graph with DFS Traversal Highlighted")

legend("topright", legend = paste("Visit", dfs_order), col = rainbow(length(dfs_order)), pch = 19)


