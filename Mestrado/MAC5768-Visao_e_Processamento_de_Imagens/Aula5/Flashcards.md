#flashcards/MAC5768/Aula5
Q: What is the main difference between elementwise and matrix operations in image processing?
?
A: Elementwise operations are performed on a pixel-by-pixel basis between corresponding pairs, whereas matrix operations are calculated using standard linear algebra rules.

Q: What two properties must an operator satisfy to be considered linear?
?
A: A linear operator must satisfy the property of additivity (the operation on a sum of inputs equals the sum of their individual operations) and the property of homogeneity (the operation on a multiplied input equals the output of the operation multiplied by the same constant).

Q: How is image addition (averaging) utilized to improve image quality?
?
A: Averaging multiple images of the same scene is used for noise reduction because it decreases the variability (variance) of uncorrelated, zero-mean additive noise.

Q: What is a practical application of image subtraction mentioned in the text?
?
A: Image subtraction is used to enhance the differences between images, which is highly useful for comparing image resolutions and performing mask mode radiography in medical imaging.

Q: What role do "tie points" (or control points) play in image registration?
?
A: Tie points are corresponding points with precisely known locations in both an input and a reference image, and they are used to estimate the geometric transformation needed to properly align the two images.

Q: Why are image transforms, such as the Fourier transform, useful in digital image processing?
?
A: Image transforms convert an image from the spatial domain into a transform domain (such as the frequency domain), where tasks like identifying and removing periodic interference can be executed much more effectively before applying an inverse transform.