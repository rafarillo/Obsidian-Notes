#flashcards/MAC5832/Aula2
Q: O que é um conjunto de dados (Amostra/dataset) no contexto de aprendizado de máquina?
?
A: É uma coleção de exemplos compostos por pares de instâncias de entrada ($x$) e suas correspondentes saídas ($y$) conhecidas.

Q: O que é o espaço de hipóteses?
?
A: É uma família de funções (explícitas ou implícitas) parametrizadas que modelam a relação entre os dados de entrada e de saída.

Q: Para que serve a função de perda (loss function) no ajuste de um modelo?
?
A: A função de perda serve para calcular e medir o erro ou discrepância entre a predição feita pelo modelo ($\hat{y}$) e o valor real ($y$).

Q: O que caracteriza o aprendizado supervisionado?
?
A: O aprendizado supervisionado ocorre quando os dados utilizados para o treinamento possuem as saídas ($y$) correspondentes conhecidas para cada instância de entrada ($x$).

Q: O que o termo "treinamento" significa em aprendizado de máquina?
?
A: Refere-se ao processo de encontrar e escolher uma hipótese ajustando os parâmetros para minimizar a função de perda calculada sobre o conjunto de dados de treinamento.

Q: Na regressão linear, o que é a Equação Normal (Normal Equation)?
?
A: É a solução analítica de forma fechada para encontrar os parâmetros ideais do modelo, dada pela fórmula $w = (X^T X)^{-1} X^T y$.

Q: Em quais situações a solução fechada da regressão linear (Equação Normal) falha em encontrar uma resposta?
?
A: Não há solução quando a matriz $X^T X$ não é inversível, o que acontece quando a dimensão dos dados é maior que o número de exemplos ($d > N$) ou quando existem linhas e colunas linearmente dependentes.

Q: Qual a complexidade computacional do cálculo analítico com inversão de matrizes na regressão linear?
?
A: A inversão da matriz possui uma complexidade computacional de $O(n^3)$.

Q: Qual é a ideia principal do algoritmo de Gradiente Descendente para minimizar o erro?
?
A: A ideia é caminhar iterativamente na direção oposta ao sinal da derivada (gradiente) da função, indo para os pontos onde o valor da função de erro seja progressivamente menor.

Q: O que é a "taxa de aprendizado" ($\eta$) no gradiente descendente?
?
A: É o valor ou constante que controla o tamanho do passo dado em cada iteração durante a atualização dos parâmetros do modelo.

Q: Qual a diferença entre o Batch Gradient Descent e o Stochastic Gradient Descent (SGD)?
?
A: No formato "Batch", todos os exemplos do conjunto de dados são processados antes que os parâmetros ($w$) sejam atualizados. Já no "Stochastic" (SGD), os parâmetros são atualizados imediatamente a cada exemplo processado individualmente.

Q: Como se obtém uma avaliação mais realista do ajuste do modelo em aprendizado de máquina, em oposição a calcular métricas (como $R^2$) apenas sobre o conjunto de treinamento?
?
A: Convém testar e verificar os coeficientes ou erros usando um conjunto de dados distinto daqueles dados que foram usados no treinamento para fazer o ajuste do modelo.