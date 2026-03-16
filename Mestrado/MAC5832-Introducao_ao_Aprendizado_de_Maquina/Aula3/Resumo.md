### Markdown Summary: Introduction to Machine Learning - Binary Classification

- **Machine Learning Tasks**: Regression focuses on predicting continuous values ($Y=\mathbb{R}$). Classification deals with predicting discrete, categorical values ($Y=\{0,1,...,k\}$).
    
- **Practical Examples**: Classification algorithms can be applied to complex tasks like image processing (e.g., locating and recognizing characters on a license plate). They are also used in medical diagnoses and evaluating physical conditions like obesity using feature inputs like weight and height.
    
- **Core Components of Classification**:
    
    - **Representation**: Transforming raw data into a set of numerical or categorical variables (feature vectors) representing an instance.
        
    - **Dataset (Amostra)**: Using a sample of labeled data patterns to train the model.
        
    - **Decision Boundary**: Establishing a boundary in the feature space that separates the different classes.
        
    - **Inference (Predição)**: Using the learned boundary to predict the class of new, unseen data.
        
- **Probabilistic Modeling & Bayes' Theorem**: The material introduces Bayes' Theorem to calculate probabilities in classification tasks. The theorem calculates the Posterior probability as $(Prior \times Likelihood) / Evidence$. The Bayes Classifier rule dictates assigning a new instance to the class that maximizes this posterior probability.
    
- **Parametric Methods and Gaussian Distributions**: When probability distributions are unknown, parametric methods can estimate parameters assuming a specific distribution. For instance, assuming data follows a Gaussian distribution allows estimating the mean and covariance matrices for different classes to form the decision boundary.
    
- **Logistic Regression vs. Linear Regression**:
    
    - Using standard Linear Regression for classification is flawed because extreme values (outliers) and imbalanced class sizes can severely shift and distort the decision boundary.
        
    - To solve this, Logistic Regression acts as a discriminative approach that uses the sigmoid function ($\sigma(z) = \frac{1}{1 + e^{-z}}$). This function squashes the output to a range between 0 and 1, allowing the model to predict class probabilities effectively without requiring the estimation of probability distributions.

![[Aula3-Note.pdf]]