Feature: Test Cases Alta, Baja, Modificacion, Consultas

@TestCases @Smoke @Consulta @Regresion
Scenario: Ver lista de Test Cases desde Proyectos. 
	
	Given el usuario inició sesion en Lippia Test Manager
	  And se encuentra en la pantalla de proyectos
	 When hace clic en el boton elipsis de un proyecto 						#los tres puntitos
	  And selecciona la opcion "'Tests'" de la lista desplegable
	 Then se muestra la pantalla Tests.
	 

@ABM @TestCases @Smoke @Regresion
Scenario Outline: Creacion de Test Case desde Proyectos. 
	
	Given el usuario inició sesion en Lippia Test Manager.
	  And tiene un proyecto creado
	  And se encuentra en la pantalla de proyectos
	  And hace clic en el boton elipsis de un proyecto
	  And selecciona la opcion "'Tests'" de la lista desplegable.
	 When hace clic en el boton "'New'"
	  And completa el campo Title: <titulo>	
	  And completa el campo Automation Type: <estado> 
	  And el campo Gherkin: <completado>.
	  And completa el campo Description: <descripcion>.
	  And hace clic en el boton "'Save'"
	 Then aparece <resultado> 

Examples:
|		 titulo			|	  estado		|			 descripcion 			 |		 completado		|						resultado								|	 
|	Prueba Automated	|	 Automated		|	Esto es un test automated		 |		 se completa		|		un alert con el mensaje: "Test case created" 		|
|	Prueba to be auto	| To be automated	| Esto es un test to be automated |		 se completa		|		un alert con el mensaje: "Test case created"		|
|	Prueba none		|		none		| 		Esto es un test none		 |		 se completa		|		un alert con el mensaje: "Test case created"		|
|						|		none		|	Es un test case sin titulo 	 |		 se completa		|	mensaje indicando que el campo Titulo es obligatorio 	|
|	Sin Gherkin	   	|	 	none		| Este es un test case sin gherkin|		no se completa		|	un alert con el mensaje: "An error ocurred. Try Later"	|


@ABM @TestCases @Smoke @Regresion
Scenario Outline: Edicion de todos los campos de un Test Case desde Tests. 
	
	Given el usuario inició sesion en Lippia Test Manager.
	  And tiene un proyecto
	  And tiene un test case
	  And se encuentra en la seccion "'Tests'"
	 When hace clic sobre el icono de lapiz de un test case
	  And borra el valor actual del campo Title
	  And completa el campo Title: <titulo>
	  And hace clic en el campo Automated Type
	  And selecciona una opcion diferente a la actual en el menu desplegable:
	  |		none	|	automated	|	to be automated	|
	  And borra el valor actual del campo Gherkin  
	  And el campo Gherkin: <completado>.
	  And borra el valor actual del campo Description
	  And completa el campo Description: <descripcion>.
	  And hace clic en el boton "'Save'"
	 Then aparece <resultado> 

Examples:
|		 titulo			|			 descripcion 			 |		 completado		|						resultado								|	
|	Prueba Edicion	1	|	Esto es una prueba de edicion	 |		 se completa		|		un alert con el mensaje: "Test Case edited" 		|
|						|	Es un test case sin titulo 	 |		 se completa		|	mensaje indicando que el campo Titulo es obligatorio 	|
|	Prueba Edicion 2 	| Este es un test case sin gherkin|		no se completa		|	un alert con el mensaje: "An error ocurred. Try Later"	|


@Smoke
  Scenario Outline: The client search by "<word>"
    Given The client is in google page
    When The client search for word <word>
    Then The client verify that results are shown properly
 
    Examples:
      | word		|
      | CI/CD		|
      | MySQL   	|
      | MongoDB	|
	  

@Feature
Feature: As a potential client i need to search in google to find a web site

  @Smoke
  Scenario Outline: The client search by "<word>"
    Given The client is in google page
    When The client search for word <word>
    Then The client verify that results are shown properly
    @crowdar
    Examples:
      | word           |
      | crowdar        |
    @automation
    Examples:
      | word           |
      | automation     |
    @docker
    Examples:
      | word           |
      | docker         |
    @vagrant
    Examples:
      | word           |
      | vagrant        |
      | cucumber       |

  @Smoke
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly
