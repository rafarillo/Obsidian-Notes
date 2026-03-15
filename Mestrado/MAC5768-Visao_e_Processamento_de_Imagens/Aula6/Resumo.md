### Summary of Intensity Transformations and Spatial Filtering

- **Spatial Domain Processing**: The term "spatial domain" refers to the image plane itself. Image processing methods in this category are based on the direct manipulation of pixels in an image. The two principal categories of spatial processing are intensity transformations and spatial filtering.
    
- **Intensity Transformations vs. Spatial Filtering**: Intensity transformations operate on single pixels of an image for tasks such as contrast manipulation and image thresholding. In contrast, spatial filtering performs operations on the neighborhood of every pixel in an image to achieve effects like smoothing and sharpening.
    
- **Basic Intensity Transformation Functions**: The three basic types of functions used frequently are linear (which includes negative and identity transformations), logarithmic, and power-law transformations.
    
    - **Image Negatives**: The negative of an image is obtained using the function $s = L - 1 - r$. This is equivalent to a photographic negative and is used for enhancing white or gray details embedded in dark regions of an image.
        
- **Contrast Stretching and Slicing**:
    
    - **Contrast Stretching**: This technique expands the range of intensity levels in an image so that it spans the full ideal intensity range of the recording medium or display device.
        
    - **Intensity-Level Slicing**: This method highlights a specific range of intensities in an image, which is useful for applications like enhancing flaws in X-ray images or masses of water in satellite imagery.
        
    - **Bit-Plane Slicing**: Instead of highlighting intensity ranges, this method highlights the contribution made by specific bits. It reveals that the highest-order bit planes contain most of the visually significant data, allowing the image to be reconstructed with acceptable detail using fewer bits.
        
- **Histogram Processing**:
    
    - **Image Histograms**: A normalized histogram provides estimates of the probabilities of intensity levels occurring in an image.
        
    - **Histogram Equalization**: This technique automatically determines a transformation function that yields a random variable characterized by a uniform probability density function. This flattens the histogram and enhances the overall contrast of the image.
        
    - **Histogram Matching (Specification)**: When histogram equalization is not suitable, this method is used to generate images that have a specifically defined histogram shape.
        
    - **Local Histogram Processing**: Instead of applying a single transformation to the whole image, a neighborhood is moved from pixel to pixel, and a histogram equalization or specification transformation is calculated for each local region.
        
    - **Histogram Statistics**: The local mean is used as a measure of average intensity, and the local variance is used as a measure of intensity contrast in a neighborhood. These statistics provide flexibility in developing enhancement rules based on local image characteristics.

![[Aula6-Note.pdf]]