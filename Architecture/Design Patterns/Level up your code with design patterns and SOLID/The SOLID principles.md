SOLID são cinco regras fundamentais para design de software

- Single responsibility
- Open-closed
- Liskov substitution
- Interface segregation
- Dependency inversion

## Single responsibility
Cada modulo, classe ou função deve ser responsável por apenas uma coisa e deve encapsular apenas essa parte da logica

#### Exemplo
``` C#
public class UnrefactoredPlayer : MonoBehaviour 
{ 
	[SerializeField] private string inputAxisName; 
	[SerializeField] private float positionMultiplier; 
	private float yPosition; 
	private AudioSource bounceSfx; 
	private void Start() 
	{ 
		bounceSfx = GetComponent(); 
	} 
	
	private void Update() 
	{ 
		float delta = Input.GetAxis(inputAxisName) * Time.deltaTime; yPosition =           Mathf.Clamp(yPosition + delta, -1, 1); 
		
		transform.position = new Vector3(transform.position.x, yPosition *                 positionMultiplier, transform.position.z); 
	} 
	
	private void OnTriggerEnter(Collider other) 
	{ 
		bounceSfx.Play(); 
	} 
}
```

O código acima mistura um monte de reponsabilidades na classe *UnrefactoredPlayer*. Toca som quando o player colide, lida com input, etc.

```C#
RequireComponent(typeof(PlayerAudio), typeof(PlayerInput), typeof(PlayerMovement))] 
public class Player : MonoBehaviour 
{ 
	[SerializeField] private PlayerAudio playerAudio; 
	[SerializeField] private PlayerInput playerInput; 
	[SerializeField] private PlayerMovement playerMovement; 
	private void Start() 
	{ 
		playerAudio = GetComponent(); playerInput = GetComponent(); 
		playerMovement = GetComponent();
	} 
} 
public class PlayerAudio : MonoBehaviour { … } 
public class PlayerInput : MonoBehaviour { … } 
public class PlayerMovement : MonoBehaviour { … }
```

Agora o script *Player* consegue manejar os outros componente em que cada class apenas faz uma coisa.

Tome cuidado para não simplificar demais criando classes com apenas 1 método.

## Open-closed principle
Classes devem ser abertas para extensão, mas fechadas para modificação. Exemplo clássico "calcular área de uma figura". A classe deve estruturada de forma que permita extensão de novos comportamentos sem alterar o código original.

```C#
public class AreaCalculator
{
    public float GetRectangleArea(Rectangle rectangle)
    {
        return rectangle.width * rectangle.height;
    }

    public float GetCircleArea(Circle circle)
    {
        return circle.radius * circle.radius * Mathf.PI;
    }
}

public class Rectangle
{
    public float width;
    public float height;
}

public class Circle
{
    public float radius;
}
```
*Codigo não obedecendo o principio open closed*


```C#
public abstract class Shape
{
    public abstract float CalculateArea();
}

public class Rectangle : Shape
{
    public float width;
    public float height;
    public override float CalculateArea()
    {
        return width * height;
    }
}  

public class Circle : Shape
{
    public float radius;
    public override float CalculateArea()
    {
        return radius * radius * Mathf.PI;
    }
}

public class AreaCalculator
{
    public float GetArea(Shape shape)
    {
        return shape.CalculateArea();
    }
}
```
*Código obedecendo princípio open closed*

Dito isso, obedecendo o pincípio open closed fica fácil de criar novas classes, debugar (se um novo shape tem um erro sabemos que o problema não está em AreaCalculator)

## Liskov substitution principle
Esse princípio afirma que classes derivadas devem ser substituíveis pela classe base. Herança permite adicionar funcionalidades nas subclasses. No entanto, isso pode levar ao aumento de complexidade desnecessário.

O princípio de Liskov nos diz como aplicar herança para tornar as nossa subclasses mais robustas e flexíveis.

#### Exemplo
Queremos uma classe veículo (dentro de veículo podemos ter carros, caminhões etc). Em todo lugar que usarmos a classe veículo deveríamos poder também utilizar as subclasses de veículo sem quebrar a aplicação.

```C#
public class Vehicle
{
    public float speed = 100;
    public Vector3 direction;
    public void GoForward()
    {
        ...
    }
    public void Reverse()
    {
        ...
    }
    public void TurnRight()
    {
        ...
    }
    public void TurnLeft()
    {
        ...
    }
}
```

```C#
public class Navigator
{
    public void Move(Vehicle vehicle)
    {
        vehicle.GoForward();
        vehicle.TurnLeft();
        vehicle.GoForward();
        vehicle.TurnRight();
        vehicle.GoForward();
    }
}
```

A classe *Navigator* controla a movimentação do nossa classe *Vehicle*. Do jeito atual podemos passar carros e caminhões para o Navigator e o código não irá quebrar. No entanto, e se passarmos um *Trem* que não implementa os métodos *TurnRight* e *TurnLeft*.

Considere as seguintes regras de ouro para evitar quebrar o princípio de Liskov

- Se você está removendo features quando está criando as subclasses, é muito provável que você esta quebrando o princípio de Liskov. Se a subclasse não se comporta como a classe base, você não está seguindo LSP
- Quanto mais lógica é colocada na classe base é mais provável que você irá quebrar LSP
- As subclasses precisam ter os mesmo membros públicos que a classe base
- Considere a API da classe antes de criar as hierarquias: classificação nem sempre se traduz na hierarquia das classes (no nosso exemplo talvez seja uma boa carro e trem herdarem de lugares diferentes)
- Opte por composição ao invés de herança

```C#
public interface ITurnable
{
    public void TurnRight();
    public void TurnLeft();
}

public interface IMovable
{
    public void GoForward();
    public void Reverse();
}

public class RoadVehicle : IMovable, ITurnable
{
    public float speed = 100f;
    public float turnSpeed = 5f;
    public virtual void GoForward()
    {
        ...
    }

    public virtual void Reverse()
    {
        ...
    }
    
    public virtual void TurnLeft()
    {
        ...
    }

    public virtual void TurnRight()
    {
        ...
    }
}

public class RailVehicle : IMovable
{
    public float speed = 100;

    public virtual void GoForward()
    {
        ...
    }

    public virtual void Reverse()
    {
        ...
    }
}

public class Car : RoadVehicle
{
    ...
}

public class Train : RailVehicle
{
    ...
}
```

No nosso caso as funcionalidades vem através de interfaces ao invés de herança. *Carro* e *Trem* não compartilham mas a mesma classe base.

Use LSP para limitar como você herda para manter sua base de código flexível e extendível.

## Interface Segregation principle
