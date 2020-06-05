--1.Consulta la facturaci�n de un cliente en espec�fico.

declare @Cliente int
set @Cliente = 651  -- Indique Codigo del Cliente

SELECT        Cliente.Nombre, SUM(Venta.TotalPagar) AS TotalFacturado
FROM            Venta INNER JOIN
                         Cliente ON Venta.IdCliente = Cliente.Id
						 where IdCliente=@cliente
						 group by Cliente.Nombre

--La consulta devuelve Nombre del cliente y total facturado