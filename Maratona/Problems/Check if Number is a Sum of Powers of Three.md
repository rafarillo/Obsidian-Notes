Given an integer `n`, return `true` _if it is possible to represent_ `n` _as the sum of distinct powers of three._ Otherwise, return `false`.

An integer `y` is a power of three if there exists an integer `x` such that $y = 3^x$.

**Example 1:**
> **Input:** n = 12
> **Output:** true
> **Explanation:** 12 = $3^{1}+ 3^2$

**Example 2:**
> **Input:** n = 91
> **Output:** true
> **Explanation:** 12 = $3^{0}+ 3^{2}+ 3^4$

**Example 3:**
> **Input:** n = 21
> **Output:** false

## Solution

```python
class Solution:
    def checkPowersOfThree(self, n: int) -> bool:
        lastmExp = -1
        while(n > 0):
            mExp = self.maxExp(n)
            if mExp == lastmExp:
                return False
            lastmExp = mExp
            value = 3 ** mExp
            n -= value

        return n == 0

    def maxExp(self, n: int) -> int:
        exp: int = 0
        while(3 ** exp <= n):
            exp += 1
        return exp - 1
```

#### Idea
Escolha o expoente $\alpha$ tal que $\alpha + 1 > n$. Itere sobre n enquanto $n > 0$ e a cada laço
- Calcule $\alpha$
- Subtraia de $n$ o valor $3^\alpha$
- Se o valor de $\alpha$ repetir entre a iteração atual e a anterior retorne falso

## Complexidade
![[Sum of Three Problem]]