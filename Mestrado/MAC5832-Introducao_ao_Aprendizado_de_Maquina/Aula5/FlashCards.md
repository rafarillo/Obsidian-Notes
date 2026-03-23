#flashcards/MAC5832/Aula5
Q: What is the main difference between OVA and OVO in multi-class classification?
?
A: OVA (One versus All) trains one classifier per class against all others, while OVO (One versus One) trains a classifier for every unique pair of classes.

Q: How is the final class predicted in the OVA method?
?
A: The prediction is the class $k$ that yields the highest classification score from its corresponding binary classifier $h_k(x)$.

Q: What activation function does Multinomial Logistic Regression use to estimate class probabilities?
?
A: It uses the Softmax function.

Q: What is "one-hot encoding" in the context of multi-class targets?
?
A: It is a representation where a target $y$ is a vector of length $K$ with a 1 at the index of the correct class and 0 elsewhere.

Q: Can a single Perceptron solve the XOR problem? Why or why not?
?
A: No. A Perceptron creates a linear decision boundary, and the XOR configuration is not linearly separable.

Q: What is the weight update rule for the Perceptron algorithm when an instance $(x, y)$ is misclassified?
?
A: The weights are updated as $w \leftarrow w + y\tilde{x}$.

Q: How do Generalized Linear Models achieve non-linear decision boundaries?
?
A: They map the input $x$ into a new space $z$ using a non-linear mapping $\phi(x)$, then apply a linear classifier in that $z$-space.

Q: What are the two main types of averaging used for multi-class performance metrics?
?
A: Micro-averaging (aggregates global TP, FP, etc.) and Macro-averaging (calculates metrics per class and then takes the mean).
