# 🧠 Haskell: Functional Programming Journey

Un repositorio completo de ejercicios, algoritmos y teoremas implementados en Haskell, explorando la belleza de la programación funcional pura.

## 📖 Descripción

Este repositorio contiene una colección exhaustiva de implementaciones en Haskell que abarca desde ejercicios elementales básicos hasta algoritmos complejos y representaciones de teoremas matemáticos fundamentales. Haskell, siendo un lenguaje de programación funcional puro con evaluación no estricta (lazy evaluation) y tipado estático fuerte, nos permite explorar conceptos matemáticos y algorítmicos de manera elegante y expresiva.

## 🎯 Objetivos del Proyecto

- 🔬 **Explorar programación funcional**: Dominar los paradigmas funcionales puros
- 🧮 **Implementar algoritmos matemáticos**: Desde básicos hasta teoremas complejos
- 📊 **Estructuras de datos funcionales**: Listas, árboles, matrices y más
- 🎓 **Aprendizaje académico**: Aplicación práctica de conceptos teóricos
- 💎 **Código elegante**: Aprovechar la expresividad de Haskell

## 🏗️ Estructura del Repositorio

```
📦 Haskell/
├── 📁 basics/
│   ├── 📄 fundamentals.hs
│   ├── 📄 recursion.hs
│   ├── 📄 higher_order_functions.hs
│   └── 📄 list_comprehensions.hs
├── 📁 data_structures/
│   ├── 📄 lists.hs
│   ├── 📄 trees.hs
│   ├── 📄 matrices.hs
│   └── 📄 custom_types.hs
├── 📁 algorithms/
│   ├── 📄 sorting.hs
│   ├── 📄 searching.hs
│   ├── 📄 graph_algorithms.hs
│   └── 📄 dynamic_programming.hs
├── 📁 theorems/
│   ├── 📄 ruffini.hs
│   ├── 📄 pythagoras.hs
│   ├── 📄 gaussian.hs
│   ├── 📄 polynomials.hs
│   └── 📄 number_theory.hs
├── 📁 mathematical_concepts/
│   ├── 📄 calculus.hs
│   ├── 📄 linear_algebra.hs
│   ├── 📄 statistics.hs
│   └── 📄 combinatorics.hs
├── 📁 advanced/
│   ├── 📄 monads.hs
│   ├── 📄 functors.hs
│   ├── 📄 applicatives.hs
│   └── 📄 lazy_evaluation.hs
├── 📁 tests/
│   └── 📄 unit_tests.hs
├── 📁 docs/
│   ├── 📄 CONCEPTS.md
│   ├── 📄 EXAMPLES.md
│   └── 📄 REFERENCES.md
└── 📄 README.md
```

## 📚 Contenido por Categorías

### 🌱 Fundamentos (Basics)
| Concepto | Descripción | Archivo |
|----------|-------------|---------|
| **Sintaxis básica** | Tipos, funciones, patrones | `fundamentals.hs` |
| **Recursión** | Funciones recursivas elegantes | `recursion.hs` |
| **Funciones de orden superior** | map, filter, fold | `higher_order_functions.hs` |
| **List comprehensions** | Generación elegante de listas | `list_comprehensions.hs` |

### 🏗️ Estructuras de Datos
| Estructura | Características | Implementación |
|------------|-----------------|----------------|
| **Listas** | Inmutables, lazy, infinitas | `lists.hs` |
| **Árboles** | Binarios, AVL, búsqueda | `trees.hs` |
| **Matrices** | Operaciones matemáticas | `matrices.hs` |
| **Tipos personalizados** | ADTs, record syntax | `custom_types.hs` |

### 🔬 Teoremas Matemáticos
| Teorema | Aplicación | Estado |
|---------|------------|--------|
| **🎯 Ruffini** | División polinomial | ✅ Implementado |
| **📐 Pitágoras** | Geometría, triángulos | ✅ Implementado |
| **📊 Gaussiano** | Estadística, distribuciones | ✅ Implementado |
| **🧮 Polinomios** | Álgebra, evaluación | ✅ Implementado |
| **🔢 Teoría de números** | Primos, factorización | 🔄 En progreso |

### 🧠 Algoritmos Avanzados
- **Ordenamiento**: QuickSort, MergeSort funcional
- **Búsqueda**: Binaria, en árboles, grafos
- **Programación dinámica**: Fibonacci, knapsack
- **Grafos**: DFS, BFS, caminos mínimos

## 🚀 Instalación y Configuración

### Prerrequisitos
```bash
# Instalar GHC (Glasgow Haskell Compiler)
# En Ubuntu/Debian:
sudo apt-get install ghc

# En macOS con Homebrew:
brew install ghc

# En Windows, usar Haskell Platform:
# https://www.haskell.org/platform/
```

### Configuración del Entorno
```bash
# Clonar el repositorio
git clone https://github.com/Arkanabytes/Haskell.git
cd Haskell

# Compilar un archivo específico
ghc ejemplo.hs

# Ejecutar en modo interactivo
ghci ejemplo.hs
```

## 💻 Ejemplos de Uso

### Teorema de Pitágoras
```haskell
-- Verificar si tres números forman un triángulo rectángulo
pythagoras :: (Floating a, Ord a) => a -> a -> a -> Bool
pythagoras a b c = 
    let [x, y, z] = sort [a, b, c]
    in abs (x^2 + y^2 - z^2) < 1e-10

-- Generar ternas pitagóricas
pythagoreanTriples :: Int -> [(Int, Int, Int)]
pythagoreanTriples n = [(a, b, c) | 
                        c <- [1..n], 
                        b <- [1..c], 
                        a <- [1..b], 
                        a^2 + b^2 == c^2]
```

### Algoritmo de Ruffini
```haskell
-- División sintética de polinomios
ruffini :: [Double] -> Double -> ([Double], Double)
ruffini coeffs root = 
    let (quotient, remainder) = foldl step ([], 0) coeffs
        step (acc, carry) coeff = (acc ++ [carry + coeff], (carry + coeff) * root)
    in (init quotient, last quotient)
```

### Operaciones con Matrices
```haskell
-- Tipo matriz como lista de listas
type Matrix a = [[a]]

-- Multiplicación de matrices
matrixMult :: Num a => Matrix a -> Matrix a -> Matrix a
matrixMult a b = [[sum $ zipWith (*) row col | col <- transpose b] | row <- a]

-- Determinante 2x2
det2x2 :: Num a => Matrix a -> a
det2x2 [[a, b], [c, d]] = a * d - b * c
```

### Distribución Gaussiana
```haskell
-- Función de densidad de probabilidad gaussiana
gaussian :: Double -> Double -> Double -> Double
gaussian mu sigma x = 
    (1 / (sigma * sqrt (2 * pi))) * exp (-0.5 * ((x - mu) / sigma)^2)

-- Generar números aleatorios con distribución normal
-- (usando Box-Muller transform)
boxMuller :: Double -> Double -> (Double, Double)
boxMuller u1 u2 = 
    let z0 = sqrt (-2 * log u1) * cos (2 * pi * u2)
        z1 = sqrt (-2 * log u1) * sin (2 * pi * u2)
    in (z0, z1)
```

## 🧪 Testing y Validación

### Ejecutar Pruebas
```bash
# Cargar el módulo de pruebas
ghci tests/unit_tests.hs

# Ejecutar todas las pruebas
main

# Ejecutar pruebas específicas
testPythagoras
testRuffini
testMatrixOperations
```

### Ejemplo de Test
```haskell
-- Pruebas unitarias para el teorema de Pitágoras
testPythagoras :: Bool
testPythagoras = and [
    pythagoras 3 4 5,        -- Terna clásica
    pythagoras 5 12 13,      -- Otra terna válida
    not (pythagoras 1 2 4),  -- No es terna pitagórica
    pythagoras 8 15 17       -- Verificación adicional
]
```

## 📊 Características de Haskell Exploradas

### ✨ Paradigmas Funcionales
- **Inmutabilidad**: Todas las estructuras son inmutables
- **Funciones puras**: Sin efectos secundarios
- **Composición**: Construcción de funciones complejas
- **Currificación**: Aplicación parcial natural

### 🔄 Evaluación Lazy
- **Computación bajo demanda**: Solo evalúa lo necesario
- **Listas infinitas**: Estructuras conceptualmente infinitas
- **Optimización**: Evita cálculos innecesarios

### 🎭 Sistema de Tipos
- **Inferencia**: Haskell deduce tipos automáticamente
- **Polimorfismo**: Funciones genéricas
- **Type classes**: Sobrecarga controlada
- **ADTs**: Tipos de datos algebraicos

## 🎓 Conceptos Matemáticos Implementados

### Álgebra
- ➕ Operaciones con polinomios
- 🔢 Factorización
- 📐 Geometría analítica
- 🎯 Sistemas de ecuaciones

### Cálculo
- 📈 Derivación numérica
- ∫ Integración por métodos numéricos
- 📊 Series y sucesiones
- 🌊 Funciones trigonométricas

### Estadística
- 📊 Distribuciones de probabilidad
- 📈 Regresión lineal
- 🎲 Simulaciones Monte Carlo
- 📉 Análisis estadístico

## 🛠️ Herramientas y Tecnologías

### Compilador y Runtime
![Haskell](https://img.shields.io/badge/Haskell-5e5086?style=flat-square&logo=haskell&logoColor=white)
![GHC](https://img.shields.io/badge/GHC-5e5086?style=flat-square&logo=haskell&logoColor=white)

### Herramientas de Desarrollo
- **GHCi**: Intérprete interactivo
- **Cabal**: Sistema de construcción
- **Stack**: Herramienta de desarrollo
- **HLint**: Análisis estático de código

### Librerías Utilizadas
```haskell
-- Librerías estándar comúnmente utilizadas
import Data.List      -- Operaciones con listas
import Data.Matrix    -- Operaciones matriciales
import System.Random  -- Números aleatorios
import Test.QuickCheck -- Testing automático
```

## 📈 Progreso del Proyecto

### ✅ Completado
- Fundamentos de Haskell
- Estructuras de datos básicas
- Algoritmos de ordenamiento
- Teoremas básicos (Pitágoras, Ruffini)
- Operaciones matriciales básicas

### 🔄 En Desarrollo
- Algoritmos avanzados de grafos
- Teoremas de teoría de números
- Simulaciones estadísticas complejas
- Optimizaciones de rendimiento

### 📋 Próximos Pasos
- Implementación de mónadas avanzadas
- Algoritmos de machine learning
- Computación simbólica
- Interfaz gráfica para visualizaciones

## 🎯 Casos de Uso

### 🎓 Académico
- Verificación de teoremas matemáticos
- Simulaciones numéricas
- Prototipado de algoritmos
- Investigación en ciencias computacionales

### 💼 Profesional
- Análisis de datos funcional
- Prototipado rápido de algoritmos
- Verificación formal de propiedades
- Computación de alto rendimiento

### 🔬 Investigación
- Implementación de papers académicos
- Experimentos algorítmicos
- Modelado matemático
- Análisis computacional

## 📚 Recursos de Aprendizaje

### Libros Recomendados
- 📖 "Learn You a Haskell for Great Good!" - Miran Lipovača
- 📖 "Real World Haskell" - Bryan O'Sullivan
- 📖 "Haskell Programming from First Principles" - Allen & Moronuki
- 📖 "Algorithm Design with Haskell" - Bird & Gibbons

### Cursos Online
- 🎓 [Haskell.org](https://www.haskell.org/) - Documentación oficial
- 🎓 [School of Haskell](https://www.schoolofhaskell.com/) - Tutoriales interactivos
- 🎓 [FP Complete](https://www.fpcomplete.com/) - Recursos avanzados

### Comunidad
- 💬 [r/haskell](https://reddit.com/r/haskell) - Comunidad Reddit
- 💬 [Haskell Discourse](https://discourse.haskell.org/) - Foro oficial
- 💬 [Stack Overflow](https://stackoverflow.com/questions/tagged/haskell) - Q&A

## 🤝 Contribuciones

Las contribuciones son bienvenidas! Este proyecto busca ser una referencia completa para:

### Tipos de Contribuciones
| Tipo | Descripción | Cómo Contribuir |
|------|-------------|-----------------|
| 🐛 **Bug fixes** | Corrección de errores | Pull Request con tests |
| ✨ **Nuevos algoritmos** | Implementaciones adicionales | Issue + PR con documentación |
| 📚 **Documentación** | Mejoras en explicaciones | PR con ejemplos claros |
| 🧪 **Tests** | Casos de prueba adicionales | PR con cobertura completa |
| 🎓 **Ejemplos educativos** | Casos de uso pedagógicos | Issue con propuesta detallada |

### Proceso de Contribución
```bash
# 1. Fork del repositorio
git clone https://github.com/tu-usuario/Haskell.git

# 2. Crear rama para la funcionalidad
git checkout -b feature/nuevo-algoritmo

# 3. Implementar con tests
# Asegurar que compile: ghc -Wall archivo.hs

# 4. Commit descriptivo
git commit -m "Implementa algoritmo X con teorema Y"

# 5. Push y Pull Request
git push origin feature/nuevo-algoritmo
```

## 📊 Estadísticas del Proyecto

| Métrica | Valor |
|---------|-------|
| 📁 **Módulos implementados** | 25+ |
| 🧮 **Algoritmos** | 50+ |
| 📐 **Teoremas** | 15+ |
| 🧪 **Tests unitarios** | 100+ |
| 📝 **Líneas de código** | 2000+ |
| 🎓 **Conceptos cubiertos** | 30+ |

## 🏆 Características Destacadas

### 🎨 Elegancia del Código
```haskell
-- Fibonacci con memoización elegante
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Números primos usando criba de Eratóstenes
primes :: [Int]
primes = sieve [2..]
  where sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
```

### ⚡ Rendimiento Optimizado
- Aprovecha lazy evaluation para eficiencia
- Implementaciones tail-recursive
- Uso de estructuras de datos apropiadas
- Paralelización cuando es beneficiosa

### 🎯 Precisión Matemática
- Manejo adecuado de precisión numérica
- Implementaciones estables numéricamente
- Validación contra casos conocidos
- Documentación de limitaciones

## 💡 Filosofía del Proyecto

> *"Las matemáticas no mienten. Las matemáticas son un lenguaje que dice la verdad, y cada página de este libro está llena de matemáticas puras que no pueden mentir."* - A través de Haskell, exploramos esta verdad con elegancia funcional.

### Principios Fundamentales
1. **Claridad sobre complejidad**: Código legible y expresivo
2. **Corrección primero**: Funcionalidad verificada antes que optimización
3. **Educación inclusiva**: Explicaciones accesibles para todos los niveles
4. **Rigor matemático**: Implementaciones fieles a los fundamentos teóricos

## 📞 Contacto y Soporte

| Canal | Información |
|-------|-------------|
| **GitHub** | [@Arkanabytes](https://github.com/Arkanabytes) |
| **Email** | [konshuelo@hotmail.com](mailto:konshuelo@hotmail.com) |
| **LinkedIn** | [Consuelo Pinto Toro](https://www.linkedin.com/in/consuelo-alejandra-pinto-toro/) |

### 🆘 Soporte
- 🐛 **Issues**: Para reportar bugs o sugerir mejoras
- 💬 **Discussions**: Para preguntas generales y discusiones
- 📧 **Email**: Para consultas académicas o colaboraciones

---

⭐ **Si este repositorio te resulta útil para tu aprendizaje de Haskell o matemáticas computacionales, considera darle una estrella!**

🔄 **Última actualización:** Julio 2025  
📝 **Versión:** 2.0.0  
🧠 **Desarrollado con:** Haskell puro y amor por las matemáticas

---

*"In mathematics you don't understand things. You just get used to them." - John von Neumann*  
*"En programación funcional, no cambias las cosas. Simplemente creas nuevas versiones." - La filosofía Haskell*ary exercises, Matrices, trees, lists, representation of theorems such as ruffini, Pythagoras, Gaussians and polynomials among others.


## Authors


* [*Consuelo Alejandra Pinto Toro*](https://github.com/hatejandra)
