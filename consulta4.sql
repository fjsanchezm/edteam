--4.De la facturación, consulta los clientes únicos (es decir, se requiere el listado de los clientes 
--que han comprado por lo menos una vez, pero en el listado no se deben repetir los clientes)

SELECT        distinct cliente.id,Cliente.Nombre, SUM(Venta.TotalPagar) AS TotalFacturado
FROM            Venta INNER JOIN
                         Cliente ON Venta.IdCliente = Cliente.Id
						 group by cliente.id,Cliente.Nombre

--La consulta devuelve id delcliente, Nombre del cliente y total facturado de los cliente que han 
--comprado por lo menos 1 vez