## Summary of Eulerian Graphs

The text introduces the concept of Eulerian Graphs by exploring the historical Problem of the Seven Bridges of Königsberg.

- **The Königsberg Problem**: The problem asks if it is possible to start in one of the land regions (A, B, C, or D), cross each of the city's 7 bridges exactly once, and return to the starting region.
    
- **Euler's Solution**: In 1736, Euler proved that such a trail does not exist. He achieved this by modeling the problem as a graph, where the vertices represent the land regions and the edges represent the bridges.
    
- **Key Definitions**:
    
    - An Eulerian trail is defined as a trail that passes through all the edges of a graph.
        
    - A graph is considered Eulerian if it possesses a closed Eulerian trail.
        
- **Fundamental Theorems and Corollaries**:
    
    - **Theorem 2.1**: A connected graph is Eulerian if and only if every single one of its vertices has an even degree.
        
    - **Corollary 2.1**: A connected graph contains an Eulerian trail if and only if it has a maximum of two vertices with an odd degree.
        
    - **Corollary 2.2**: If a connected graph has 2k vertices of odd degree, then the graph can be decomposed into k disjoint open trails.