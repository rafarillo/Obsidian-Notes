## Summary: Graph Theory - Trees

The provided text covers the fundamental concepts, properties, and characterizations of **Trees** within graph theory.

### 1. Fundamental Definitions

- **Acyclic Graps:** A graph that contains no circuits or cycles.
    
- **Tree:** A graph that is both **conexo** (connected) and **acyclic**.
    
- **Forest:** An acyclic graph where the connected components are individual trees.
    
- **Leaves:** Vertices within a forest or tree that have a degree of 1.
    
- **Spanning Tree (Árvore Geradora):** A subgraph that includes all vertices of the original graph and is itself a tree.
    

### 2. Key Properties and Theorems

- **Connectivity Requirements:** For a graph with $n$ vertices to be connected, it must have at least $n-1$ edges (denoted as $e(G) \ge n-1$). However, having $n-1$ edges is not a sufficient condition for connectivity on its own.
    
- **Characterization Theorem:** A connected graph with $n$ vertices is a tree if and only if it has exactly $n-1$ edges ($e(G) = n-1$).
    
- **Leaf Propostion:** Every non-trivial tree (a tree with more than one vertex) contains at least **two leaves**.
    
- **Existence:** Every connected graph contains at least one spanning tree.
    

### 3. Equivalent Statements for Trees

A graph $G$ with $n$ vertices is a tree if any of the following equivalent conditions are met:

1. $G$ is a tree (connected and acyclic).
    
2. There is a **unique path** between any two vertices $u$ and $v$.
    
3. $G$ is acyclic, but adding any new edge creates exactly one cycle.
    
4. $G$ is connected and every edge is a **cut-edge** (removing it disconnects the graph).
    
