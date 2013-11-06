Práctica de Laboratorio #8.
================

Introducción
------------

El objetivo de esta práctica es el desarrollo de la clase **Matriz** mediante el Desarrollo dirigido por pruebas (Test Driven Development - TDD) usando como herramienta **Rspec**. 

Además de esta herramienta vamos a usar **Travis** y **Guard**.

Documentación
------------

La organización de los ficheros y directorios en esta práctica es la siguiente:

```
/prct06
	Rakefile
	Guardfile
	Gemfile	
	.travis.yml
	/spec
		matriz_spec.rb
	/lib
		matriz.rb
```

El fichero **Rakefile**, va a contener varios objetivos.

* `spec` será la opción por defecto y hará que se ejecute el fichero _matriz_spec.rb_
* `bin` es la opción que ejecutará el programa principal _matriz.rb_
* `test` ejecutará el fichero de pruebas con documentación
* `thtml` ejecutará el fichero de pruebas en formato html. 

El fichero **Gemfile** contendrá las gemas que son necesarias para la ejecución de nuestro programa.

**Guardfile** será el fichero donde definamos los ficheros que queremos que estén en seguimiento (para que se comprueben las pruebas que vamos realizando sobre ellos de manera automática)

El fichero **.travis.yml** contendrá las expectativas para probar nuestro programa haciendo uso de la herramienta **Travis**. Vamos a probar nuestro programa en las siguientes plataformas:

```
  - 1.9.3
  - jruby-18mode # JRuby in 1.8 mode
  - jruby-19mode # JRuby in 1.9 mode
  - rbx-18mode
  - rbx-19mode
  - 1.8.7
```

En el directorio **spec**, se encuentra el fichero **matriz_spec.rb** donde están definidas las expectativas para nuestro programa. 
Las expectativas están separadas en los siguientes bloques:

* Creación y almacenamiento de una matriz
* Operaciones de formato
* Operaciones aritméticas
* Operaciones unarias
* Otras operaciones

El siguiente directorio es **lib**, aquí se encuentran el fichero principal **matriz.rb**.

**matriz.rb** contiene la definición de la clase y los siguientes métodos:

* `initialize` es el método para inicializar los objetos de la clase. Contendrá los parámeros 'filas' (fil) y 'columnas' (col)
* `to_s` devuelve una cadena con la representación de la matriz
* `==` compara si dos matrices son iguales
* `traspuesta` obtenemos la matriz traspuesta de otra
* `+` devuelve una nueva matriz que suma al objeto que invoca el que le pasan como parámetro
* `-` devuelve una nueva matriz  que resta al objeto que invoca el que le pasan como parámetro 
* `*` devuelve una nueva matriz  que multiplica al objeto que invoca el que le pasan como parámetro
* `x` realiza el producto de una matriz por un escalar
* `x` realiza la division de una matris por un escalar

Componentes
------------

* Sara Báez García
* Jorge Gómez Weyler
