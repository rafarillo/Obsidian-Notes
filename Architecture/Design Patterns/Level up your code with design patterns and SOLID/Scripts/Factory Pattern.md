- Special object that create other objects
- Encapsula muito dos detalhes de spawnar os "produtos"

Queremos instanciar items para a minha fase. Podemos apenas instanciar os objetos, mas e se quisermos um comportamento custom quando criamos cada objeto.

Ao invés de usar Ifs e switchs podemos criar uma interface para os "produtos" e uma classe abstrata para "factory"
```C#
public interface IProduct
{
    public string ProductName { get; set; }
    public void Initialize();
}

public abstract class Factory : MonoBehaviour
{
    public abstract IProduct GetProduct(Vector3 position);
    // shared method with all factories
 …
}
```
A interface defini o que é comum a todos os produtos. Cada produto defini como será seu initialize.

```C#
public class ProductA : MonoBehaviour, IProduct
{
    [SerializeField] private string productName = “ProductA”;
    public string ProductName { get => productName; set => productName = value ; }
    private ParticleSystem particleSystem;
    public void Initialize()
    {
        // any unique logic to this product
        gameObject.name = productName;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        particleSystem?.Stop();
        particleSystem?.Play();
    }
}

public class ConcreteFactoryA : Factory
{
    [SerializeField] private ProductA productPrefab;
    public override IProduct GetProduct(Vector3 position)
    {
        // create a Prefab instance and get the product component
        GameObject instance = Instantiate(productPrefab.gameObject,
        position, Quaternion.identity);
        ProductA newProduct = instance.GetComponent<ProductA>();
        // each product contains its own logic
        newProduct.Initialize();
        return newProduct;
    }
}
```

### Pros and cons
- Definir novos "produtos" não alterará algum código existente
- Separar em cada produto sua logica interna de inicialização deixa o código da "fabrica" curto
- O ponto negativo é que precisa-se criar muitas classes e subclasses para implementar esse pattern. Assim como outros patterns isso introduz um pouco de overhead, o que pode ser desnecessário se não existem muitos produtos.

### Improvements
Pode-se usar esse pattern não somente para criar "produtos". Podemos usar para outras coisas como: setar elementos de UI numa caixa de dialogo.