## Resumo da Aula 01: Introdução ao Aprendizado de Máquina

### 1. Organização e Logística da Disciplina

- **Comunicação e Material**: O curso utiliza o sistema e-disciplinas da USP, que centraliza os avisos, fóruns, log de aulas, slides e listas de exercícios.
    
- **Avaliação**: Será baseada em listas de exercícios (que devem ser entregues manuscritas e de forma legível), EPs, tarefas em sala, participação do aluno e uma avaliação presencial no final do semestre. A frequência nas aulas também será cobrada.
    
- **Pré-requisitos**: É exigido conhecimento prévio em Álgebra Linear, Cálculo II (múltiplas variáveis), Probabilidade e Estatística, além de Algoritmos/Programação em Python.
    
- **Expectativas e Regras**: O foco da disciplina é nos **fundamentos teóricos** e não em ser apenas instrumental (a parte prática fica a cargo do aluno). É estritamente proibido o plágio de respostas de livros, internet ou de Inteligência Artificial sem que haja interpretação e reescrita com as próprias palavras.
    
- **Material Base**: A disciplina é bastante fundamentada no livro _"Learning From Data: A Short Course"_ (autor principal: Yaser Abu-Mostafa).
    

### 2. Conceitos Iniciais de Aprendizado de Máquina (Machine Learning - ML)

- **O que é ML**: Envolve aprender a partir de dados. A definição formal citada (Tom Mitchell, 1997) descreve como um programa de computador que melhora o desempenho em alguma tarefa ($T$), medido por uma métrica de desempenho ($P$), através da experiência ($E$).
    
- **Extração de Conhecimento**: O aprendizado no mundo real utiliza observações para gerar teorias. No contexto computacional, os dados brutos oriundos do mundo real (coletados por sensores, transações digitais, textos) passam por modelagem e extração de informações para que se tornem úteis e auxiliem na tomada de decisão.
    
- **Reconhecimento de Padrões**: A união de dados, contexto e conhecimento permite o reconhecimento e a detecção de padrões, processos centrais em ML.
    
- **Aplicações de Exemplo**: O documento cita o reconhecimento de placas de veículos a partir de imagens ou vídeos e a análise de células em lâminas microscópicas para encontrar anomalias.
    

### 3. Tarefas e Abordagens

- **Pipeline de Resolução**: Em problemas como a identificação de carros em imagens, as tarefas envolvem etapas que vão da localização de objetos de interesse (segmentação/detecção) até a extração de características (features) para que seja possível realizar a classificação/reconhecimento do objeto.
    
- **Visão Funcional (Mapeamento)**: A tarefa consiste em encontrar uma função ajustável $f$ que faça o mapeamento de um espaço de dados de entrada $X$ para um espaço de saídas $Y$. Isso é construído através de uma amostra de treinamento (dataset) contendo exemplos $(x, y)$ associados.
    
- **Otimização**: Os parâmetros do modelo ($\theta$) são ajustados visando diminuir uma "função de perda" (Loss Function), que mede a distância entre a resposta estimada e a saída real.
    
- **Principais Tipos de Problemas Supervisionados**:
    
    - **Regressão**: Estimação de valores contínuos (ex: predizer o preço de um item).
        
    - **Classificação**: Determinação de categorias discretas ou rótulos.
        

### 4. Conteúdo Programático Previsto

Os algoritmos e teorias que serão estudados ao longo do semestre (de forma aproximada) incluem:

- Modelos básicos: Regressão Linear e Regressão Logística.
    
- Redes Neurais: Perceptron, Multi-layer Perceptron e redes neurais convencionais.
    
- Conceitos teóricos sobre a viabilidade do aprendizado (_Is Learning Feasible?_).
    
- Boas práticas: Validação, seleção de modelo, regularização e combate ao _overfitting_.
    
- Outros Algoritmos Potenciais: Máquinas de Vetores de Suporte (SVM), Árvores de Decisão, e Random Forests.
    
- Conceitos de modelos discriminativos versus gerativos.
    
- Tópicos como aprendizado não-supervisionado e Deep Learning.

![[Mestrado/MAC5832-Introducao_ao_Aprendizado_de_Maquina/Aula1/Aula1.pdf|Aula1]]