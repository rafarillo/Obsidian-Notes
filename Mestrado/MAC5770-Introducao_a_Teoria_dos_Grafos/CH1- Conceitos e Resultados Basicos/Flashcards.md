#flashcards/MAC5770/CH1-Conceitos_e_Resultados


## 🎴 Fundamentals of Graph Theory

Front: What is the formal definition of a graph G?
?
Back: A graph is an ordered pair G=(V,E), where V and E are disjoint sets, V contains vertices, and E contains edges.

Front: What is the purpose of the incidence function ϕ (or ψ)?
?
Back: It maps edges to pairs of vertices, written as ψ:E→V(2), to show which vertices an edge connects.

Front: How is the **order** of a graph defined?
?
Back: The order of a graph G=(V,E) is the cardinality (number) of the vertex set V, denoted as ∣V∣.

---

## 🎴 Degrees and Theorems

Front: What is the **degree** of a vertex v, and how are loops handled?
?
Back: The degree dG​(v) is the number of edges incident to v, with loops being counted twice.

Front: State the **Handshaking Lemma** (Lema do aperto de mãos).
?
Back: For every graph G, the sum of the degrees of the vertices is equal to twice the number of edges: $$\sum_{v \in V(G)} d_{G}(v)=2|E(G)|$$.

Front: What is the parity of the number of vertices with an odd degree?
?
Back: Every graph has an **even** number of vertices of odd degree.

Front: How are δ(G) and Δ(G) defined?
?
Back: δ(G) is the minimum degree of any vertex in the graph, and Δ(G) is the maximum degree.


---

## 🎴 Terminology and Features

Front: What are **parallel (multiple)** edges?
?
Back: Edges that connect the same pair of vertices.

Front: What is an **independent** (or stable) set of vertices?
?
Back: A set of vertices where no two vertices in the set are adjacent to each other.