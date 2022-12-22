# Proyecto 01 - Grupo 07

### Indice
[Instalación](#instalación)  
[Usuarios](#usuarios)  
[Diseño](#diseño)  
[Conexión](#conexión)  
[Conclusión](#conclusiones)  
[Integrantes](#integrantes)  

## Instalación
    
![](media/Instalacion01.png)  
![](media/Instalacion02.png)  
![](media/Instalacion03.png)  
![](media/Instalacion04.png)
![](media/Instalacion05.png)
![](media/Instalacion06.png)
![](media/Instalacion07.png)
![](media/Instalacion08.png)
![](media/Instalacion09.png)
![](media/Instalacion10.png)
![](media/Instalacion11.png)
![](media/Instalacion12.png)
![](media/Instalacion13.png)
![](media/Instalacion14.png)
![](media/Instalacion15.png)
![](media/Instalacion16.png)
![](media/Instalacion17.png)
![](media/Instalacion18.png)
![](media/Instalacion19.png)
![](media/Instalacion20.png)
![](media/Instalacion21.png)

## Usuarios
Root Password: `<456e7R697175654!a6I6J6f417@70656c657461Oa`  
Azpeleta: `<7f980d383e5J99bd6@cK8ab-72b443da!`   
Ja1Rin: `<Aa57e27Ie7f562fJ6d@b9386e!260ba3!`  
Zegameus: `<6f3@Id8647cJ989063e96OOf050da4e2!`

## Diseño
![](media/Diseno1.png)
La primera tabla consiste en describir a los atletas, para ello hemos puesto que tiene un codigo,nombre,apellido
pais... Para la proxima creamos una tabla de paises para cada unos de los atletas.
Una tabla de campeonatos con el id de cada uno, el año de celebracion, su continente y pais.
Y por ultimo una de resultados con todas las marcas de cada una de las actividades, el id del atleta en concreto,
el id del campeonato y la posicion final de cada atleta 


## Conexión
![](media/Conexion1.png)  
El primer paso para conectar con MySQL en DataGrip, hay que clicar sobre el más que se ubica en la sección
de Database Explorer, en el desplegable que se nos muestra, nos dirigimos al submenú `Data Source` y ahí buscamos `MySQL`.  

![](media/Conexion2.png)  
En la pestaña que se nos presenta al clicar, rellenaremos los campos `Name` con un nombre descriptivo
para identificar la conexión (por ejemplo tener una conexión para el usuario `root` y otra para nuestro usuario personal).
Luego en `Host` ponemos la dirección del servidor de MySQL, en nuestro caso al instalarlo en nuestra máquina, la dirección es el `localhost`.
El puerto lo dejamos como viene (por defecto). En cuanto al usuario usaremos uno de los que hemos configurado en la instalación y su respectiva contraseña.

Luego usaremos `Test Connection` para comprobar la conexión, cuando nos salga el cuadro superior como `Succeeded` clicamos sobre OK.

## Conclusiones
En primer lugar, para concluir, tuvimos un problema con la instalación de MySQL
el cual no nos dejaba establecer conexión con la base de datos, porque había
que activar una opción en el panel de control, región, administrativo, configuración regional:
versión beta de UTF-8.  
En segundo lugar, cabe destacar la labor de búsqueda de los tipos de datos de MySQL, que son diferente a los
de ORACLE. Además, había que crear una base de datos para poder crear tablas.

Tuvimos también problemas con las restricciones, ya que estas funcionan de forma distinta a las de ORACLE.
Por ejemplo, en la tabla países, al insertar datos, se nos olvidó en una ocasión poner un valor a la entrada 
(`Insert into paises values('','');`), lo cual no nos debería de haber permitido introducirlo.
Para solucionarlo, usamos checks(cod_pais!='').
Para finalizar, nos hemos dado cuenta de que MySQL funciona de una forma completamente diferente a ORACLE,
sobre todo en el tema de restricciones.





### Integrantes
> * David Azpeleta
> * Enrique García
> * Jairo Obispo