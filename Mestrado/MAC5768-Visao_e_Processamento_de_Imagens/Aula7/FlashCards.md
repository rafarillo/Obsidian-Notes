#flashcards/MAC5768/Aula7

Q: What does a normalized histogram represent in terms of probability?
?
A: The components of a normalized histogram, $p(r_k)$, are estimates of the probabilities of intensity levels occurring in an image.

Q: What are the two primary conditions required for an intensity transformation function $T(r)$?
?
A: 1) $T(r)$ must be a monotonic increasing function in the interval $[0, L-1]$ to prevent intensity reversal artifacts. 2) The output range of the function must be $0 \le T(r) \le L-1$ to maintain the same intensity range as the input.

Q: How does the histogram of a "low-contrast" image typically appear?
?
A: It has a narrow shape and is typically located toward the middle of the intensity scale, resulting in a dull, washed-out gray appearance.

Q: In the continuous case, why is the Cumulative Distribution Function (CDF) used for histogram equalization?
?
A: Because applying the CDF as a transformation function always results in an output variable with a uniform probability density function (PDF), regardless of the shape of the input PDF.

Q: Why are perfectly flat histograms rare in practical (discrete) histogram equalization?
?
A: Because digital images use integer values, results must be rounded. No new intensity levels are created; instead, existing levels are remapped (often many-to-one), which prevents the histogram from being perfectly uniform.

Q: What is the main advantage of histogram equalization over other contrast enhancement techniques?
?
A: It is fully automatic and "hands-off," meaning it performs enhancement using only information extracted directly from the image without requiring user-defined parameters.
