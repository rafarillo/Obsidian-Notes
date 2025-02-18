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

## Metodo PBD constraint

![[PBD Constraint]]

