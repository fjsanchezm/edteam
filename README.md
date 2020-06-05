# Prueba en EDTEAM
Ejercicios de prueba para concursar como Asistente de BI en EDteam

## Estructura del proyecto

La estructura del proyecto está basada en Microsoft SQL Server 2014

### Diseña una Base de datos que permita solucionar el siguiente problema:

- Los productos tendrán como mínimo: Nombre, presentación, valor.  
- Los clientes tendrán como mínimo: Identificación, nombre, país.  
- El inventario tendrá como mínimo: producto, tipo de movimiento (entrada o salida), fecha, cantidad.  
- La facturación debe tener como mínimo: la información del cliente, los productos comprados, impuestos, descuentos, valor a pagar.
- Esta base de datos debe estar en 3ra forma normal.  
- Poblar la base de datos con suficiente información para realizar algunas consultas y crea las siguientes:  
   1.- Consulta la facturación de un cliente en específico.  
   2.- Consulta la facturación de un producto en específico.  
   3.- Consulta la facturación de un rango de fechas.  
   4.- De la facturación, consulta los clientes únicos (es decir, se requiere el listado de los clientes que han comprado por lo menos          una vez, pero en el listado no se deben repetir los clientes)  
   5.- Cubo de información (opcional): Si tienes experiencia en cubos de información, diseña un cubo con la base de datos anterior donde 
       se tenga toda la información de facturación.  


## Instalación
1.- Ejecutar script `creacionBD.sql`. Este script crea la base de datos edteam.  
2.- Ejecutar script `estructura.sql`. Crea el resto de tablas, indices, etc.  
3.- Ejecutar script `datos.sql`. LLena las tablas.  

## Consultas Requeridas
1.- Ejecutar script [consulta1.sql](https://github.com/fjsanchezm/edteam/blob/master/consulta1.sql). Esta consulta requiere se indique un codigo de cliente  
2.- Ejecutar script `Consulta2.sql`. Esta consulta requiere se indique un codigo de producto  
3.- Ejecutar script `Consulta3.sql`. Esta consulta requiere se indique un rango de fechas  
4.- Ejecutar script `Consulta4.sql`.  
