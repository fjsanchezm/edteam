--3.Consulta la facturación de un rango de fechas.
declare @FecDesde date
declare @FecHasta date
set @FecDesde = '20190101'  -- Indique Fecha Inicial
set @FecHasta = '20190131'  -- Indique Fecha Final
SELECT         SUM(Venta.TotalPagar) AS TotalFacturado
FROM            Venta 
where fecha between @FecDesde and @FecHasta

--La consulta devuelve total facturado en el rango de fechas solicitado