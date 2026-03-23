#flashcards/MAC5768/Aula8

Q: What is the primary goal of histogram equalization?
?
A: To spread the intensity levels of an input image so they span a wider range of the intensity scale, resulting in automatic contrast enhancement.

Q: How does histogram matching differ from histogram equalization?
?
A: Histogram equalization seeks a uniform output histogram, while histogram matching allows the user to specify a particular shape for the output histogram.

Q: Why might local histogram processing be preferred over global processing?
?
A: Global processing often fails to enhance details in small areas because those pixels have a negligible influence on the global transformation; local processing focuses on pixel neighborhoods to reveal hidden details.

Q: In the context of image statistics, what do the mean and variance represent?
?
PyGuiA: The mean is a measure of average intensity, and the variance (or standard deviation) is a measure of image contrast.

Q: What defines a "linear" spatial filter?
?
A: A spatial filter is considered linear if the operation performed on the image pixels is a linear combination of the pixel values and its neighbors.

Q: What is a common side effect of global histogram equalization on an image with a high concentration of dark pixels?
?
A: It can result in a light, "washed-out" appearance because it maps a very narrow interval of dark pixels to the upper end of the gray scale.
