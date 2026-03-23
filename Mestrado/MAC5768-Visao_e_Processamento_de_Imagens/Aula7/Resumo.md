## Summary: Histogram Processing and Equalization

Histogram processing is a fundamental tool in digital image processing used for image enhancement, representation, and analysis. The histogram of a digital image with intensity levels in the range $[0, L-1]$ is a discrete function $h(r_k) = n_k$, where $r_k$ is the $k$-th intensity value and $n_k$ is the number of pixels in the image with that intensity.

### 1. Key Concepts

- **Normalized Histogram:** Defined as $p(r_k) = n_k/MN$, where $M$ and $N$ are the image rows and columns. The components of a normalized histogram are estimates of the probability of occurrence of intensity levels.
    
- **Image Appearance:** The shape of a histogram relates directly to image appearance:
    
    - **Dark images** have histograms concentrated on the lower end of the scale.
        
    - **Light images** are biased toward the higher end.
        
    - **Low-contrast images** have narrow histograms typically centered in the middle.
        
    - **High-contrast images** cover a wide range of the intensity scale with a nearly uniform distribution.
        

### 2. Histogram Equalization

This is an automatic method for contrast enhancement that seeks to create an image with a uniform histogram.

- **Continuous Case:** For a continuous intensity variable $r$, the transformation $s = T(r) = (L-1) \int_0^r p_r(w) dw$ (the Cumulative Distribution Function or CDF) always yields a random variable $s$ with a uniform Probability Density Function (PDF).
    
- **Discrete Case:** The transformation is implemented as:
    
    $$s_k = T(r_k) = (L-1) \sum_{j=0}^{k} p_r(r_j) \text{ for } k = 0, 1, 2, ..., L-1$$
    
- **Properties:** To prevent intensity reversals and ensure a valid mapping, $T(r)$ must be a **monotonic increasing** function in the range $[0, L-1]$ and map the input range to the same output range $[0, L-1]$.
    

### 3. Practical Effects

While discrete histogram equalization rarely produces a perfectly "flat" histogram due to the nature of rounding integer values, it generally spreads the intensity levels across a wider range. This results in significant contrast enhancement and increased gray-level detail, particularly for images that are initially too dark, too light, or have low contrast.