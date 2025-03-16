PBD Limitations:
- Depende do time step da simulação
- Depende do iteration count
- As constraints ficam mais rigidaz conformes a iteração aumenta ou o time step diminui
- Acoplamento dos parametros
- Aumentar o iteration count para obter mais rigidez em um objeto pode inadvertidamente mudar o comportamento de outros objetos. Logo, precisaremos *retunar* o valor do stifiness globalmente (isso torna dificil utilizar assets reutilizaveis) 
- Não fornece estimativa para força

### XPBD
- Resolve o problema do iteration count e do time spte introduzindo uma nova constraint (elastic potential energy)
- Resolve as equações de maneira implicita introduzindo o conceito de multiplicadores de lagrnage

## Metodo PBD constraints

![[PBD Constraint]]



### Metodo XPBD
Começamos com a equação de newtown que relaciona força com energia

$$M \ddot{x} = - \nabla U^{T}(x)$$
Aproximamos $\ddot{x}$ usando diferenças finitas
$$M \dfrac{x^{n+1} - 2x^{n} + x^{n-1}}{\Delta t^{2}}= - \nabla U^{T} (x^{n+1})$$
Onde 
$$U(x) = \dfrac{1}{2} C(x)^{T} \alpha^{-1}C(x)$$
onde $\alpha$ é uma matriz diagonal que corresponde ao inverso do stifiness. 

$$f_{elastic} = - \nabla _{x}U^{T} = -\nabla C^{T}\alpha  C$$
Introduzindo multiplicadores de lagrange

$$\lambda_{elastic} = - \tilde{\alpha}^{-1} C(x)$$
Onde $\lambda_{elastic}$ é um vetor de multiplicadores de constraints. $\tilde{\alpha} = \dfrac{\alpha}{\Delta t^2}$
