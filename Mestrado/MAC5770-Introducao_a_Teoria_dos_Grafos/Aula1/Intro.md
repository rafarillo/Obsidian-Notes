
## 1. Basic Concepts and Definitions

A **graph $G$** is an ordered pair $(V, E)$ where:

- **$V$ (Vertices):** A set of points or nodes.
    
- **$E$ (Edges):** A set of pairs of vertices representing connections.
    
- **Incidence Function ($\psi$):** Formally maps edges to pairs of vertices, denoted as $\psi: E \rightarrow V^{(2)}$.
    

### Core Terminology

- **Adjacency:** Two vertices are **adjacent** (neighbors) if they are connected by an edge.
    
- **Incidence:** An edge is said to **incide** on the two vertices it connects.
    
- **Special Edges:** * **Loops:** Edges where both endpoints are the same vertex.
    
    - **Multiple/Parallel Edges:** Two or more edges that connect the same pair of vertices.
        
- **Order and Size:** * The **order** of a graph is the number of vertices ($|V|$).
    
    - The **size** is the number of edges ($|E|$).
        

---

## 2. Degrees of Vertices

The **degree** of a vertex $v$, denoted as $d(v)$, is the number of edges incident to it. **Loops** are counted twice.

- **Minimum Degree ($\delta(G)$):** The smallest degree among all vertices.
    
- **Maximum Degree ($\Delta(G)$):** The largest degree among all vertices.
    
- **Average Degree ($\overline{d}(G)$):** The sum of all degrees divided by the number of vertices.
    

### Fundamental Theorems

- **Handshaking Lemma:** The sum of the degrees of all vertices is equal to twice the number of edges:
    
    $$\sum_{v \in V(G)} d(v) = 2|E(G)|$$
    
- **Corollary:** Every graph must have an even number of vertices with an odd degree.
    

---

## 3. Special Types of Graphs

- **Simple Graph:** A graph with no loops or multiple edges.
    
- **Regular Graph:** A graph where every vertex has the same degree $k$ ($k$-regular).
    
- **Complete Graph ($K_n$):** A simple graph where every pair of distinct vertices is adjacent.
    
- **Bipartite Graph:** A graph where the vertex set can be partitioned into two disjoint sets, $X$ and $Y$, such that every edge connects a vertex in $X$ to one in $Y$.
    
- **Empty/Trivial:** An **empty** graph has no vertices or edges; a **trivial** graph has exactly one vertex and no edges.
    

---

## 4. Notable Examples

- **Grid Graph ($G_{m,n}$):** Vertices are arranged in an $m \times n$ rectangular grid.
    
- **Cycle Graph ($C_n$):** A graph consisting of a single closed circuit of $n$ vertices.
    
- **Infinite Graphs:** While the text focuses on finite graphs, it notes the existence of infinite paths and grids.


![[Mestrado/MAC5770-Introducao_a_Teoria_dos_Grafos/Aula1/Aula1.pdf]]