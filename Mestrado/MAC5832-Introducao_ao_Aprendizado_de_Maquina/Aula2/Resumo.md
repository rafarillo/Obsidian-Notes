## Resumo: Introdução ao Aprendizado de Máquina (Aula 02)

O documento consiste em slides de uma aula da disciplina "MAC0460/5832 - Introdução ao Aprendizado de Máquina", ministrada pela professora Nina S. T. Hirata no IME/USP. O objetivo do material é introduzir conceitos cruciais do aprendizado de máquina, utilizando a regressão linear como um exemplo didático prático.

### Conceitos Fundamentais

- **Aprendizado Supervisionado**: Refere-se a cenários onde os dados de treinamento contêm instâncias de entrada ($x$) e as suas correspondentes saídas ($y$) conhecidas.
    
- **Conjunto de Dados (Amostra/Dataset)**: Uma coleção de exemplos (pares de entrada e saída esperada) que o modelo utiliza para aprender.
    
- **Espaço de Hipóteses**: Uma família de funções (explícitas ou implícitas) parametrizadas que modelam a relação entre as entradas e as saídas.
    
- **Função de Perda**: Uma função que mede a discrepância (ou erro de predição) entre a predição feita pelo modelo ($\hat{y}$) e o valor real ($y$).
    
- **Treinamento**: É o processo de escolher uma hipótese ajustando os parâmetros para minimizar a perda calculada sobre os dados de treinamento.
    

### Exemplo Prático: Regressão Linear

O problema de prever o preço que se deve cobrar por um objeto em função do seu ano de fabricação é usado para exemplificar a regressão linear. O modelo define uma predição linear $\hat{y} = w_0 + w_1x$ e a qualidade do seu ajuste é avaliada através da minimização do quadrado do erro.

O documento aborda dois métodos principais para encontrar os parâmetros do modelo (treinamento):

#### 1. Método Analítico (Solução Fechada)

- Envolve a resolução de um sistema de equações lineares para encontrar o ponto onde o gradiente da função é zero.
    
- Através de operações matriciais, chega-se à chamada _Normal Equation_ (Equação Normal), onde os parâmetros ideais $w$ são calculados pela fórmula $w = (X^T X)^{-1} X^T y$.
    
- **Desvantagens**: Nem sempre existe uma solução (a matriz pode não ser inversível devido a variáveis linearmente dependentes), e a inversão da matriz tem alta complexidade computacional ($O(n^3)$), o que torna a abordagem lenta para grande quantidade de variáveis ou dados.
    

#### 2. Método Iterativo (Gradiente Descendente)

- Essa técnica baseia-se em caminhar na direção oposta ao sinal da derivada (gradiente) da função para alcançar um ponto com menor erro.
    
- A atualização dos parâmetros em cada iteração é governada por uma "taxa de aprendizado" ($\eta$).
    
- O documento menciona o **Batch Gradient Descent** (que processa todos os exemplos do conjunto antes de atualizar os pesos) e o **Stochastic Gradient Descent** (que atualiza os pesos a cada exemplo processado).
    
- Esse método iterativo é mais rápido quando o volume de dados ($N$) ou a dimensão dos dados ($d$) é muito grande, e pode ser aplicado a funções de perda não-convexas para encontrar mínimos locais.
    

### Avaliação do Modelo

- Uma forma de medir o quão bem o modelo foi ajustado é através do Coeficiente de Determinação ($R^2$ _score_).
    
- No entanto, o cálculo do $R^2$ apenas sobre os dados de treinamento indica somente a qualidade do ajuste sobre aqueles mesmos dados.
    
- Para se obter uma avaliação realista do aprendizado de máquina, é necessário testar o modelo utilizando dados distintos do conjunto usado durante o treinamento.