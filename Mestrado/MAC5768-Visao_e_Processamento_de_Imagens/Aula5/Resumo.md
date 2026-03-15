### Summary of Basic Mathematical Tools in Digital Image Processing

The provided text outlines essential mathematical concepts, tools, and operations utilized in digital image processing:

- **Pixel Distances and Adjacency**: Distances such as $D_4$ and $D_8$ depend strictly on the coordinates of the pixels, whereas the $D_m$ (m-adjacency) distance is defined by the shortest m-path. This means $D_m$ distance relies on the actual values of the pixels and their neighbors along the path.
    
- **Elementwise vs. Matrix Operations**: Elementwise operations involve calculations on a pixel-by-pixel basis, while matrix operations follow standard linear algebra rules. Unless stated otherwise, image operations are assumed to be elementwise, which is also known as the Hadamard product.
    
- **Linear vs. Nonlinear Operators**: A linear operator is one that satisfies two core properties: additivity and homogeneity. For example, the summation operation is linear, while finding the maximum pixel value (the `max` operator) is a nonlinear operation.
    
- **Arithmetic Operations**:
    
    - **Addition**: Averaging multiple noisy images is frequently used for noise reduction, as it lowers the variance of uncorrelated, zero-mean additive noise.
        
    - **Subtraction**: Image subtraction is routinely used to enhance and isolate differences between images. Practical applications include tracking lost detail across different resolutions and performing mask mode radiography in medical imaging.
        
    - **Multiplication and Division**: These elementwise operations are primarily used for shading correction and for masking specific regions of interest (ROIs).
        
- **Image Registration**: This procedure aligns an input image with a reference image. It often utilizes tie points (or control points)—which are corresponding locations known precisely in both images—to model and compensate for geometric distortions.
    
- **Vector and Matrix Representation**: Multispectral images, such as RGB color images, can be represented by organizing the component pixel intensities into n-dimensional column vectors.
    
- **Image Transforms**: Some tasks are best accomplished by transforming an image from the spatial domain into a transform domain. The Discrete Fourier Transform (DFT) is a fundamental example that translates images into the frequency domain, allowing for the easy identification and filtering of issues like periodic (sinusoidal) interference before returning the image to the spatial domain via an inverse transform.

![[Aula5-Note.pdf]]