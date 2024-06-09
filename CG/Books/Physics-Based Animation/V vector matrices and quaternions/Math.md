Start 571
End 

Curr 582 
### Derivada do dot product

$$
\dfrac{d}{dt}(a \cdot b) = \dfrac{da}{dt} \cdot b + \dfrac{db}{dt} \cdot a
$$

## Derivada do cross
$$
\dfrac{d}{dt}(a \times b) = \dfrac{da}{dt} \times b + \dfrac{db}{dt} \times a
$$


Essas duas derivadas acima é só lembrar da regra da derivada da multiplicação

$$
(f(x) \cdot g(x))' = f'(x) \cdot g(x) + g'(x) \cdot f(x)
$$


# Matrizes

### Matrix ortogonal
$$R^{T}= R^{-1}$$
### Matrix simetrica

$$A = A^T$$

matrizes simetricas podem ser escritas na forma

$$A = RDR^T$$

onde $R$ é uma matriz ortogonal e $D$ é uma matriz diagonal.

Prova 

$$\begin{matrix}
A^{T} &=& (RDR^T)^{T} \\
 &=& (DR^T)^TR^T \\
 &=& RDR^T
\end{matrix}$$
### Skew Matrix

$A^{T}= -A$

Toda matrix quadrada pode ser decomposta em uma soma de simetrica e skew-symetric matrices.

### Cross product matrice

$$
a^\times=
\begin{pmatrix}
0 & -a_{z} & a_{y}  \\
a_{z} & 0 & -a_{x} \\
-a_{y} & a _{x} & 0
\end{pmatrix}
$$

$a \times b = a^{\times}b$

A cross product matrix é skew simetrica
$a^{\times^{T}} = -a^\times$

Propriedades dessa matriz

$$\begin{matrix}
a^{\times}b & = & a^Tb^\times  \\
a^{\times}b & = & -b^{T}a^\times \\
a^{\times}b & = & b^{\times}a
\end{matrix}$$

### Eigein value

A direita:
$$Av = \lambda v$$

A esquerda:
$$u^{T} A = \lambda u^t$$

na forma matricial temos a direita

$AV = VD$
onde:
$A$ - é dado
$V$ - é a matrix formada por todos os eigen vector a direita
$D$ -a a matrix diagonal = $diag = (\lambda_{1}), \lambda_{2} \dots \lambda_{n}$
Para a esquerda temos

$V^TA = DV^T$