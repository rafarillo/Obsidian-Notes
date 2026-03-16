### Summary of "Introdução ao Aprendizado de Máquina - Classificação"

- **Binary Classification & Linear Models**: The objective of a linear binary classifier is to find a weight vector such that applying the sigmoid function maps the output to a probability close to 1 for the positive class and 0 for the negative class.
    
- **Likelihood & Cross-Entropy Loss**: In classification, we aim to maximize the likelihood function, which finds the probability distribution that best explains the observed data. Maximizing this likelihood function is mathematically equivalent to minimizing the cross-entropy loss.
    
- **Interpretation of Loss**: The cross-entropy loss heavily penalizes wrong predictions. For instance, if the true class is 1, a prediction close to 0 will yield a massive error, whereas a prediction close to 1 yields a tiny error.
    
- **Decision Boundaries**: The decision boundary for logistic regression is linear. Depending on the dimensions, it can be a straight line (in 2D space) or a plane (in 3D space).
    
- **Optimization**: The cross-entropy loss function is convex, meaning it has a global minimum. Numerical methods, such as gradient descent, are employed to find the weights that minimize this loss.
    
- **Performance Evaluation**: A classifier's performance can be evaluated using a confusion matrix, which records True Positives (TP), False Positives (FP), True Negatives (TN), and False Negatives (FN). Key derived metrics include Precision, Recall, False Positive Rate (FPR), Accuracy, and F1-score. Changing the probability threshold impacts metrics like the True Positive Rate and False Positive Rate.
    
- **Multi-class Classification**: To handle more than two classes, one approach is to combine multiple binary classifiers using strategies like One-versus-All (OVA) or One-versus-One (OVO).
    
- **Multinomial Logistic Regression**: Alternatively, multi-class classification can be achieved directly via Multinomial Logistic Regression by replacing the sigmoid function with the softmax function and using one-hot encoded targets.
    
- **Multi-class Evaluation**: Performance in multi-class tasks is evaluated using micro-averaging (aggregating all TP, FP, TN, and FN globally) or macro-averaging (calculating metrics per class and averaging the results).