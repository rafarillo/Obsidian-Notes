#flashcards/MAC5770/Aula7
**Q: What are the two defining characteristics of a tree in graph theory?**
?
**A:** A tree is a graph that is both **connected** and **acyclic** (contains no cycles).

**Q: What is the minimum number of edges ($e(G)$) required for a graph with $n$ vertices to be a tree?**
?
**A:** A tree with $n$ vertices must have exactly $n-1$ edges.

**Q: Is having $n-1$ edges sufficient to prove a graph is connected?**
?
**A:** No. For example, a graph with 5 vertices and 4 edges could be disconnected if three vertices form a triangle and the other two form a separate edge.

**Q: What is a "leaf" in the context of trees and forests?**
?
**A:** A leaf is a vertex with a degree of 1.

**Q: How many leaves does a non-trivial tree have at minimum?**
?
**A:** Every non-trivial tree has at least two leaves.

**Q: What happens if you add an edge between two non-adjacent vertices in a tree?**
?
**A:** It will create exactly one cycle.

**Q: What is a spanning tree (árvore geradora)?**
?
**A:** It is a subgraph that contains all the vertices of the original graph and functions as a tree.

**Q: In a tree, how many paths exist between any two vertices $u$ and $v$?**
?
**A:** There is exactly one unique path.

**Q: What is the relationship between a forest and a tree?**
?
**A:** A forest is an acyclic graph whose connected components are trees.

**Q: If every edge in a connected graph is a "cut-edge," what can we conclude about the graph?**
?
**A:** The graph is a tree.
