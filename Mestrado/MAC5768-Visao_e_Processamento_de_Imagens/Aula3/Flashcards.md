#flashcards/MAC5768/Aula3
Q: What is the difference between coordinate indexing and linear indexing in image processing?
?
A: Coordinate indexing identifies a pixel's location using standard 2-D coordinates $(x, y)$, while linear indexing represents pixel locations as a 1-D string of integers calculated as offsets from the origin.

Q: In a column scan of an image with M rows, what is the formula to calculate the linear index (α) of a pixel at coordinates (x, y)?
?
A: α = My + x

Q: How do you convert a linear index (α) back into 2-D coordinates (x, y) for an image with M rows?
?
A: x = α mod M and y = (α - x) / M

Q: What are the 4-neighbors of a pixel p located at (x, y)?
?
A: The two horizontal and two vertical neighbors located at (x+1, y), (x-1, y), (x, y+1), and (x, y-1).

Q: What makes up the 8-neighbors of a pixel?
?
A: The combination of its 4-neighbors (horizontal and vertical) and its 4 diagonal neighbors.

Q: What is the difference between a "closed" and an "open" neighborhood for a pixel p?
?
A: A closed neighborhood includes the pixel p itself in the set of locations, whereas an open neighborhood does not.

Q: What defines a digital path between a starting pixel p and an ending pixel q?
?
A: A sequence of distinct pixels where each adjacent pair of pixels in the sequence meets a specified adjacency criteria (such as 4-adjacency or 8-adjacency).

Q: When is a digital path considered to be a "closed path"?
?
A: When the starting pixel p and the ending pixel q of the path are the same.

Q: What is a "connected component" within a subset S of an image?
?
A: It is the set of all pixels in S that are connected to a specific pixel by a digital path that consists entirely of pixels within that same subset S.

Q: How is a "region" defined in image processing?
?
A: A region is a connected set of pixels, meaning the entire subset is made up of just one connected component.

Q: When are two regions considered to be "adjacent"?
?
A: When the union of the two regions forms a single connected set. (If they do not, they are considered disjoint).