#flashcards/MAC5832/Aula6
Q: What is the primary difference between a Perceptron and a Logistic Regressor in terms of their activation functions?
?
A: A Perceptron uses a step function for binary response, while a Logistic Regressor uses a sigmoid (or logistic) function to estimate probability.

Q: Why can a single Perceptron not solve the XOR problem?
?
A: Because the XOR problem is not linearly separable, and a single perceptron can only create linear decision boundaries.

Q: What is the update rule for the Perceptron algorithm when it encounters a misclassified example (x, y)?
?
A: $w \leftarrow w + y \tilde{x}$.

Q: In a three-layer perceptron architecture, what is the role of the first layer?
?
A: It partitions the input space into different regions.

Q: What does the Universal Approximation Theorem state?
?
A: That a feed-forward network with a single hidden layer containing a finite number of neurons can approximate continuous functions on compact subsets of $R^n$.

Q: Why are step functions replaced with sigmoid functions in modern Neural Networks?
?
A: To make the network trainable, as sigmoid functions are continuous and differentiable, allowing for gradient-based optimization.

Q: What algorithm is used to compute the partial derivatives of the loss function in a Neural Network?
?
A: Backpropagation, which utilizes the chain rule to compute gradients from the last layer to the first.