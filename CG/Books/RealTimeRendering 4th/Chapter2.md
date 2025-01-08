# Architecture

![[RealTimeRenderingCH2]]

### Application
- Tipicamente implementada em software rodando em CPU de propósito geral
- As tarefas geralmente executas por CPU geralmente são
	- Collision detection
	- Algoritmos de aceleração global
	- Animações
	- Simulações físicas
	- Entre outros

### Geometry Processing
- Lida geralmente com:
	- Transformações
	- Projeções
	- E outro tipos de processamentos geométricos
- Computa o que deve ser desenhado
- Computa onde deve ser desenhado
- Como deve ser desenhado
- Geralmente ocorre na GPU

### Rasterization
- Recebe como input três vértices
- Forma um triangulo com esses vertices
- E encontra todos os pixeis que estão dentro desse triangulo
- Ocorre na GPU

### Pixel processing
- Executa um programa por pixel
- Determina a cor
- Determina a profundidade para saber se é visivel ou não
- Faz blending também entre cores
- Ocorre na GPU

### Geometry Processing

![[Geometry-Processing]]
- Vertex Shading
	- Compute position of vertex
	- Evaluar se o programa que como output do vertex normais, textures coordinates etc
	- Don't evaluate any shading equation
	- Setup each data associated with each vertex

- Projection
	- Ortographic: one characteristc of this projection is that, parallel lines remain parallel after the projection. Also the ortographic projection return the canonical cube
	- Perspective: quanto mais longe o objeto está, menor ele aparenta ser na projeção. Linhas paralelas tendem a convergir no horizonte para essa projeção. O resultado é o frustrum (piramide truncada com base retangular). O frustrum depois é transformado no cubo canonico

### Optional Vertex Processing
- Geometry shader
- Tesselation
	- Subdivide the triangles in more triangles to have more detail
	- Usualmente
		- Mesh + perto + detalhado
		- Mesh + longe - detalhado

### Clipping
Só precisamos renderizar o que é visto. As figuras que estão parcialmente no campo de visão que passam pelo processo de clipping. 

### Screen Mapping
Tudo que está dentro do view volume é passado para o screen mapping.

### Rasterization
Dados os vertices projetados na tela e o shading data associado a eles. A etapa atual é colorir os pixeis que estão dentro da primitiva.
Dois Passos:
- Triangle setup
- Triangle traversal


#### Triangle Setup
Como o nome já diz, configuramos as informações do triangulo. (grossura da linha por exemplo)

#### Triangle Traversal
Aqui, todo pixel que tiver seu centro (ou amostras) contidas no triangulo são checados e um fragment é gerado para parte do pixel que é coberta pelo triangulo.  

### Pixel Processing
Até agora já encontramos todos os pixeis dentro do triangulo/primitiva. Nesse estágio aplicamos transformadas/operações nesses pixeis encontrados.
Passos:
- Pixel Shading
- Pixel Merging
####