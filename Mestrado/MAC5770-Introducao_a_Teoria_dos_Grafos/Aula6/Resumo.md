### **1. Core Concepts**

An **Eulerian graph** is a connected graph that can be traversed completely without lifting the pen or repeating an edge. A graph is Eulerian if and only if every vertex has an even degree.

- **Eulerian Trail:** A trail that visits every edge of a graph exactly once.
    
- **Edge Partitioning:** A connected graph is Eulerian if and only if its edges can be partitioned into circuits.
    

### **2. The Fleury Algorithm**

The Fleury algorithm is used to find an Eulerian trail in a connected graph that has at most two vertices of odd degree.

- **Starting Point:** If there are vertices with an odd degree, you must start at one of them; otherwise, start at any vertex.
    
- **The "Smart Choice":** At each step, choose an available incident edge, giving strict preference to edges that are **not bridges** (cut-edges). You only choose a bridge if there are no other options.
    
- **Goal:** The algorithm ensures the final trail uses every edge in the graph, leaving the remaining graph empty.
    

### **3. The Chinese Postman Problem**

Formulated by Mei-Ko-Kwan in 1962, this problem seeks the **shortest possible closed walk** that passes through every edge of a graph at least once. It is a fundamental problem in route optimization and delivery logistics.