## Pros
- Faz distinção clara entre metodos geometricos e fisicos
- Estabelece as limitações dos metodos geometricos e fisicos
- Explica de maneira simplificada o sistema de colisão
- Ao falar sobre o solver o artigo menciona de quanto que é o erro da aproximação (O(|$\Delta p^2$|)) 
- Deixa explicito quais são as limitações do PBD e como cada outro metodo derivado do PBD resolve as limitações
- Explica de maneira sucinta quais tipos de constraint devem ser adicionadas para simular outros tipos de materias
- Tabela explicativa demostrando as diferença entre todos os metodos baseados em PBD e XPBD
## Cons
- Não deixa explicito que usamos o static collision como um fallback caso a colisão continua falhe
- Não explica como identificamos se um raio está dentro ou fora da outra mesh (o artigo base, também não deixa claro isso)
- Uso errado de nomenclaura raio (https://en.wikipedia.org/wiki/Line_(geometry)#Ray:~:text=Ray%5Bedit,finite%20field.), usualmente um raio tem uma origem e um vetor versor, logo o raio tem um início, mas não tem um fim. Logo é impossível um raio estar inteiramente dentro da mesh (o artigo base também comete esse mesmo erro)
- Não explica como o fato de adicionar a matriz de compliance resolve o problema da dependencia do timestep
