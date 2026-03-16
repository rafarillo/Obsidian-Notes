#flashcards/MAC5832/Aula3
Q: What is the primary difference between Regression and Classification as defined in the material?
?
A: Regression is used to predict continuous values ($Y=\mathbb{R}$), while Classification is used for discrete values ($Y=\{0,1,...,k\}$).

Q: What are the four main steps or concepts involved in a classification problem?
?
A: The four main concepts are Representation (extracting features), Sample/Dataset (training data), Decision Boundary (separating classes), and Inference/Prediction (classifying new data).

Q: According to Bayes' Theorem in the context of classification, how is the posterior probability calculated?
?
A: The posterior probability is calculated as the product of the prior probability and the likelihood, divided by the evidence.

Q: What is the decision rule for the Bayes Classifier?
?
A: The winning rule is to choose the class $y^*$ that maximizes the posterior probability $P(Y|X)$, which is mathematically equivalent to maximizing the numerator $P(Y)P(X|Y)$.

Q: Why is standard Linear Regression considered a poor choice for binary classification?
?
A: Linear Regression is highly sensitive to examples at the extremes (outliers) and unbalanced classes, both of which can inaccurately shift the decision boundary away from its optimal position.

Q: What specific mathematical function does Logistic Regression use to ensure its outputs remain between 0 and 1?
?
A: Logistic Regression uses the sigmoid function, defined as $\sigma(z) = \frac{1}{1 + e^{-z}}$.