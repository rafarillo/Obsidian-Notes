#flashcards/MAC5768/Aula6
Q: What does the term "spatial domain" refer to in image processing?
?
A: The spatial domain refers to the image plane itself, where processing methods involve the direct manipulation of pixels in an image.

Q: What is the main difference between intensity transformations and spatial filtering?
?
A: Intensity transformations operate on single pixels for tasks like contrast manipulation, whereas spatial filtering performs operations on a neighborhood around every pixel for tasks like smoothing or sharpening.

Q: How is an image negative calculated, and what is its primary use?
?
A: An image negative is calculated using the formula $s = L - 1 - r$. It is primarily used to enhance white or gray details that are embedded in predominantly dark regions of an image.

Q: What is the purpose of contrast stretching?
?
A: Contrast stretching expands the range of intensity levels in an image so that it takes advantage of the full intensity range of the recording medium or display device.

Q: What is the main benefit of bit-plane slicing?
?
A: Bit-plane slicing allows you to see the contribution of individual bits to an image. It shows that the highest-order bit planes hold the most significant detail, which means an image can be stored using fewer bit planes to save space.

Q: What does a normalized image histogram represent?
?
A: A normalized image histogram represents the estimated probabilities of each intensity level occurring in a given image.

Q: What is the mathematical goal of histogram equalization?
?
A: The goal of histogram equalization is to transform the image's intensity levels so that they produce a uniform probability density function (a flat histogram).

Q: When would you use histogram matching (specification) instead of histogram equalization?
?
A: You would use histogram matching when you need the processed image to have a specific, predetermined histogram shape, rather than just a uniform distribution.

Q: How are histogram statistics used for local image enhancement?
?
A: Histogram statistics use the local mean to measure average intensity and the local variance to measure contrast within a small neighborhood. This allows for customized enhancements based on the specific characteristics of local areas in the image.