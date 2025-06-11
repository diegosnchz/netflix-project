# Análisis del Catálogo de Netflix con Pandas

## Descripción
Este proyecto es un análisis exploratorio de datos (EDA) del catálogo de títulos de Netflix. El objetivo es practicar las habilidades de limpieza, transformación y análisis de datos utilizando Python y la librería Pandas, partiendo de un dataset público de Kaggle.

## Objetivos del Análisis
El proyecto sigue una serie de preguntas guía para limpiar y transformar los datos, preparándolos para un análisis más profundo. Las tareas realizadas incluyen:
- Manejo de valores nulos y faltantes (reemplazando textos como "Not Given").
- Eliminación de filas y columnas irrelevantes.
- Conversión de tipos de datos (de `float` a `int`).
- Creación de nuevas columnas a partir de datos existentes (extracción del género principal).

## Dataset
El dataset utilizado es "Netflix Movies and TV Shows" y fue obtenido de [Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows).

## Proceso de Limpieza y Transformación
- **Valores Nulos:** Se identificaron y manejaron 2588 valores faltantes en la columna `director` y 287 en `country`, reemplazándolos con el formato estándar `NaN` o la moda (valor más frecuente), respectivamente.
- **Columnas Irrelevantes:** Se eliminó la columna `show_id` por no aportar valor analítico.
- **Tipos de Datos:** La columna `release_year` se convirtió de `float` a `int` para un manejo más adecuado.
- **Feature Engineering:** Se creó la columna `genero_principal` extrayendo la primera categoría de la columna `listed_in` para simplificar el análisis de géneros.

## Herramientas Utilizadas
- **Lenguaje:** Python 3
- **Librerías:** Pandas, NumPy
- **Entorno:** Jupyter Notebook dentro de Visual Studio Code

## Cómo Usar este Repositorio
1. Clona el repositorio.
2. Asegúrate de tener las librerías necesarias (`pip install pandas numpy`).
3. Abre y ejecuta el archivo `analysis.ipynb` en un entorno de Jupyter.