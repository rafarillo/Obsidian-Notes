# Topic Summary: Multi-class Classification and Perceptrons

### 1. Multi-class Classification Strategies

When a dataset contains more than two classes ($K > 2$), standard binary classifiers can be adapted using two primary methods:

- **One versus All (OVA/OVR):** A separate binary classifier $h_k(x)$ is trained for each class $k$ to distinguish it from all other classes. The final prediction is the class with the highest classification score.
    
- **One versus One (OVO):** A binary classifier is trained for every possible pair of classes, resulting in $K(K-1)/2$ total classifiers. Prediction is typically made by counting "votes" from each classifier.
    

### 2. Multinomial Logistic Regression

This approach extends logistic regression to multiple classes using the **Softmax function** instead of the Sigmoid function:

- **Softmax Function:** Estimates the probability $P(y=k|x)$ for each class $k$, ensuring all probabilities sum to 1.
    
- **Loss Function:** Uses the cross-entropy loss with **one-hot encoded** targets.
    

### 3. Generalized Linear Models

To handle non-linearly separable data, generalized linear models map the original features into a higher-dimensional space ($z$) where a linear decision boundary can be applied. This allows for complex, non-linear boundaries in the original feature space.

### 4. Perceptrons

The perceptron is a fundamental linear classifier and the origin of artificial neural networks.

- **Activation:** It uses a **step function** (sign function) to produce a binary response (+1 or -1).
    
- **Limitation:** It can only solve linearly separable problems and fails on configurations like the **XOR** problem.
    
- **Algorithm:** It iteratively updates its weight vector $w$ by adding $y\tilde{x}$ whenever it misclassifies an instance $(x, y)$.
    
