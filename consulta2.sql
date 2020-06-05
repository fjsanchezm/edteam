--2.Consulta la facturaci�n de un producto en espec�fico.
declare @Producto int
set @Producto = 923  -- Indique Codigo del Producto

SELECT        nombre,SUM(Venta.TotalPagar) AS TotalFacturado
FROM            Venta INNER JOIN
                         VentaDetalle ON Venta.Id = VentaDetalle.IdVenta INNER JOIN
                         Producto ON VentaDetalle.idProducto = Producto.Id
WHERE        (VentaDetalle.idProducto = @Producto)
GROUP BY Producto.Nombre

--La consulta devuelve Nombre del producto y total facturado