#flashcards/MAC5768/CH2-Digital-Images-Fundamentals

Front: What is the mathematical relationship between wavelength ($\lambda$), frequency ($v$), and the speed of light ($c$)?
?
Back: $\lambda = c/v$

Front: How is the energy ($E$) of an electromagnetic wave related to its frequency ($v$)?
?
Back: $E = hv$ (where $h$ is Planck's constant).

Front: What are the three components used to describe chromatic light?
?
Back: Radiance (total energy), Luminance (perceived energy), and Brightness (subjective perception).

Front: In the image formation model $f(x, y) = i(x, y)r(x, y)$, what do the functions $i$ and $r$ represent?
?
Back: $i(x, y)$ is the **illumination** incident on the scene, and $r(x, y)$ is the **reflectance** (or transmissivity) of the objects.

Front: What is the difference between "Sampling" and "Quantization"?
?
Back: **Sampling** is the digitization of the spatial coordinates $(x, y)$, while **Quantization** is the digitization of the amplitude/intensity values.

Front: What is the formula to calculate the number of bits ($b$) required to store a digital image of size $M \times N$ with $2^k$ intensity levels?
?
Back: $b = M \times N \times k$

Front: What visual artifact is caused by insufficient intensity resolution in smooth areas of an image?
?
Back: **False contouring** (where smooth transitions appear as distinct, ridge-like borders).

Front: What is "Nearest Neighbor Interpolation"?
?
Back: An image resizing method that assigns the intensity of the closest pixel to a new location. It is computationally simple but can cause heavy distortion or jagged edges.

Front: How does "Bilinear Interpolation" calculate the intensity of a new pixel?
?
Back: It uses the four nearest neighbors to estimate the intensity at a given location via a weighted average.

Front: Where is the origin $(0, 0)$ typically located in the coordinate system of a digital image?
?
Back: At the **top-left corner**, with the x-axis extending downward and the y-axis extending to the right.