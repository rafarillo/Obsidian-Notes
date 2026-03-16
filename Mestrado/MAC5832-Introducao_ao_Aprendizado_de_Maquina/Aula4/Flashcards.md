#flashcards/MAC5832/Aula4
Q: What is the main objective of binary classification in a linear model as presented in the document?
?
A: The objective is to find a weight vector $w$ such that the function $h(x) = \sigma(w^\top\tilde{x})$ approximates 1 if the true label is $y=1$ and 0 if $y=0$.

Q: What is the relationship between the maximum likelihood function and the cross-entropy loss?
?
A: Maximizing the likelihood function of the observed data is equivalent to minimizing the cross-entropy loss.

Q: How does the cross-entropy loss behave when the true label is 1 (positive class)?
?
A: If the predicted probability approaches 1, the error is small; if the predicted probability approaches 0, the error becomes extremely large.

Q: What shape does the decision boundary of logistic regression take?
?
A: The decision boundary in logistic regression is linear. For example, it is a line in a 2D space and a plane in a 3D space.

Q: What optimization algorithm is commonly used to minimize the cost function in logistic regression?
?
A: Numerical methods, specifically gradient descent, are commonly used because the cross-entropy loss function is convex.

Q: What metrics are derived from the Confusion Matrix for evaluating a binary classifier?
?
A: Precision, Recall, False Positive Rate (FPR), Accuracy, and F1-score.

Q: What are two common strategies for expanding binary classifiers to multi-class classification?
?
A: One-versus-All (OVA) and One-versus-One (OVO).

Q: What function is used in Multinomial Logistic Regression to replace the sigmoid function for multi-class tasks?
?
A: The softmax function.

Q: How do Micro-averaging and Macro-averaging differ when evaluating multi-class classification models?
?
A: Micro-averaging computes a global metric by aggregating all TP, FP, TN, and FN first, while Macro-averaging computes the metric for each class individually and then calculates the mean of those metrics across all classes.