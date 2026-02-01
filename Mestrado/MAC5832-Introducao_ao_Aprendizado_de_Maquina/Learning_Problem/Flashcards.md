#flashcards/MAC5832/LearningProblem

### **Subject: The Essence of Machine Learning**

**Front:**

What are the three components required for a problem to be suitable for machine learning?

**Back:**

1. **A pattern exists:** There is something to be discovered.
    
2. **No mathematical definition:** We cannot pin down the pattern mathematically (i.e., we cannot write the code/equation directly).
    
3. **Data exists:** We have data to learn from.
    

---

**Front:**

Why is machine learning used instead of manually writing a program for problems like movie ratings?

**Back:** Because we cannot mathematically pin down the complex pattern of how people rate movies. Since we cannot write the system on our own, we depend on data to find the system.

---

### **Subject: Formalizing the Learning Problem**

**Front:**

In the formal learning diagram, what does the symbol **$f$** represent?

**Back:**

**The Target Function.** It is the ideal, unknown formula that maps input $x$ to output $y$.

---

**Front:**

In the formal learning diagram, what does the symbol **$g$** represent?

**Back:**

**The Final Hypothesis.** It is the formula produced by the learning algorithm that approximates the target function $f$.

---

**Front:**

What is the **Hypothesis Set ($H$)**?

**Back:** It is the set of candidate formulas/functions that the algorithm chooses from to approximate the target function.

---

**Front:**

What constitutes a **Learning Model**?

**Back:** The combination of the **Hypothesis Set** and the **Learning Algorithm**.

---

### **Subject: The Perceptron Model**

**Front:**

How does the Perceptron model classify an input (the formula)?

**Back:** It calculates a weighted sum of the inputs and compares it to a threshold.

- Formally: $h(x) = \text{sign}(w^T x)$.
    
- If positive, the output is $+1$ (approve); if negative, $-1$ (deny).
    

---

**Front:**

What is the update rule for the Perceptron Learning Algorithm (PLA) when a point is misclassified?

**Back:** $w \leftarrow w + y x$ (You add the input vector multiplied by the label to the weights) .

- _Note: If $y$ is negative, you are subtracting $x$_.
    

---

**Front:**

Under what condition is the Perceptron Learning Algorithm guaranteed to converge?

**Back:** If the data is **linearly separable** (meaning a straight line/plane can perfectly separate the classes).

---

### **Subject: Types of Learning**

**Front:**

What defines **Supervised Learning**?

**Back:** The training data explicitly contains the input and the correct output (label).

- _Example: Coin recognition with labels for denominations_.
    

---

**Front:**

What defines **Unsupervised Learning**?

**Back:** The training data contains only the input, without the target labels/output.

- _Goal: To find clusters or higher-level representations (like organizing coins by size without knowing their value)_.
    

---

**Front:**

What defines **Reinforcement Learning**?

**Back:** The system does not receive the correct output but receives a "grade" (reward or punishment) for its actions.

- _Example: A toddler learning not to touch a hot cup via pain response_.
    

---

### **Subject: Theory & Feasibility**

**Front:**

What is the main takeaway from the "Learning Puzzle" (predicting the label of a visual pattern)?

**Back:** Because the target function is unknown, many different functions could fit the observed data samples but behave differently on unseen data. This implies that pure memorization is not learning; we need a theory to guarantee generalization.