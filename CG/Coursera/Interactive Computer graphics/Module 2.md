## Diagram beautification
- Ajustar geometrias em runtime
- Fazer sugestão de desenho


#### Constraint solver
Retorna a combinação de todas as restrições
Para combinar podemos usar uma arvore que geras as combinações dois a dois
![[Pasted image 20250210200831.png]]

## Pen-and-ink Textures
Problema:
- Desenhar texturas com que possuem um padrão que se repete
- Solução: texture synthesis (https://chongyangma.com/publications/de/2011_de_paper.pdf)

## 2-3 Shape Manipulation

Objetivo: mover e deformar shapes 2d.
- Space warp
	- Deformar o espaço e não o objeto
- Physics (mass-spring model)
	- Demora para convergir
	- Instavel

##### Algoritmo
Queremos minimizar a distorção no shape satisfazendo algumas constraint

Input - coordenadas dos handles (q)
Output: coordenadas das vertices da mesh (u)
Minimizar: distorção dos triangulos

Minimização da distorção dos triangulos:
$$\arg\min_{u \in \mbox{MeshVertices}} \sum_{t \in \mbox{Triangles} }E_{t}(u)$$
Queremos $E$ tal que ...
- Translação e rotação (rigid transformation) $E = 0$
- Scale, strech, shear $E > 0$
