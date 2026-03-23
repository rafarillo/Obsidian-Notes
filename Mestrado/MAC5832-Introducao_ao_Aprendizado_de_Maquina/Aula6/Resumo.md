# Summary: Perceptrons and Neural Networks

### 1. The Perceptron

The Perceptron is a simple linear binary classifier and is considered the origin of artificial neural networks.

- **Structure**: It consists of inputs ($x_i$) with associated weights ($w_i$), a summation node ($\sum w_i x_i$), and an **activation function**.
    
- **Activation Function**: Specifically uses a **step function**.
    
- **Output**: Produces a binary response: $\hat{y} = 1$ if the weighted sum is greater than 0, and 0 otherwise.
    
- **Decision Boundary**: It creates a **linear decision boundary**.
    
- **Algorithm**: The weights are updated iteratively when a misclassification occurs: $w \leftarrow w + y \tilde{x}$. It is guaranteed to converge if the data is linearly separable.
    

### 2. Limitations and Multi-Layer Architectures

- **XOR Problem**: A single perceptron cannot solve the XOR problem because the classes are not linearly separable.
    
- **Three-Layer Solution**: An architecture with three layers of perceptrons can define arbitrary boundaries:
    
    - **Layer 1**: Partitions the input space into regions.
        
    - **Layer 2**: Selects specific regions (represented by vertices of a unitary cube).
        
    - **Layer 3**: A single perceptron checks if any node in the second layer fired a positive response.
        
- **Training Issue**: While multi-layer perceptrons (MLPs) can represent complex functions, architectures using step functions are not easily trainable.
    

### 3. Modern Neural Networks (NNs)

- **Transition**: To make networks trainable, the step activation function is replaced with continuous, differentiable, and bounded functions like the **sigmoid**.
    
- **Universal Approximation Theorem**: States that a feed-forward network with a single hidden layer and a finite number of neurons can approximate any continuous function.
    
- **Deep Learning**: Modern NNs consist of an input layer, one or more hidden layers, and an output layer where every node in one layer is connected to every node in the next (fully connected).
    
- **Training Technique**: Learning is achieved through gradient descent, requiring the **backpropagation** algorithm to compute partial derivatives of the loss function efficiently using the chain rule.
    