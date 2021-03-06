USE [mytestEdteam]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](500) NOT NULL,
	[IdPais] [int] NOT NULL,
	[LimiteCredito] [numeric](18, 2) NOT NULL,
	[Estatus] [nvarchar](20) NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Cliente_FecCreacion]  DEFAULT (getdate()),
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impuestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[TipoImpuesto] [nvarchar](10) NOT NULL,
	[PctImpuesto] [numeric](18, 2) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Impuestos_FecCreacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_Impuestos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MovimientoProducto]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[TipoMovimiento] [nvarchar](1) NULL,
	[Fecha] [date] NULL,
	[Cantidad] [numeric](18, 2) NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_MovimientoProducto_FecCreacion]  DEFAULT (getdate()),
	[IdUsuario] [int] NOT NULL,
	[TipoDocumento] [nvarchar](3) NOT NULL,
	[IdDocumento] [int] NOT NULL,
 CONSTRAINT [PK_MovimientoProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pais]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreEspanol] [nvarchar](100) NOT NULL,
	[NombreIngles] [nvarchar](100) NULL,
	[CodTelefono] [nvarchar](5) NULL,
	[IdUsuario] [int] NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Pais_FecCreacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Presentacion]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](500) NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Presentacion_FecCreacion]  DEFAULT (getdate()),
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Presentacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](250) NOT NULL,
	[IdPresentacion] [int] NOT NULL,
	[Valor] [numeric](18, 2) NULL CONSTRAINT [DF_Producto_Valor]  DEFAULT ((0)),
	[IdImpuesto] [int] NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Producto_FecCreacion]  DEFAULT (getdate()),
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[UsrCreacion] [nvarchar](20) NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Usuario_FecCreacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[NroFactura] [nvarchar](20) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Subtotal] [numeric](18, 2) NOT NULL CONSTRAINT [DF_Ventas_Subtotal]  DEFAULT ((0)),
	[PctDescuento] [numeric](18, 2) NOT NULL CONSTRAINT [DF_Ventas_PctDescuento]  DEFAULT ((0)),
	[MonDescuento] [numeric](18, 2) NOT NULL CONSTRAINT [DF_Ventas_MonDescuento]  DEFAULT ((0)),
	[MonImpuesto] [numeric](18, 2) NOT NULL CONSTRAINT [DF_Ventas_MonImpuesto]  DEFAULT ((0)),
	[TotalPagar] [numeric](18, 2) NOT NULL CONSTRAINT [DF_Ventas_TotalPagar]  DEFAULT ((0)),
	[IdUsuario] [int] NOT NULL,
	[FecCreacion] [smalldatetime] NOT NULL CONSTRAINT [DF_Ventas_FecCreacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 04/06/2020 07:14:35 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdImpuesto] [int] NOT NULL,
	[Cantidad] [numeric](18, 2) NOT NULL CONSTRAINT [DF_VentaDetalle_Cantidad]  DEFAULT ((0)),
	[Precio] [numeric](18, 2) NOT NULL CONSTRAINT [DF_VentaDetalle_Precio]  DEFAULT ((0)),
	[Total] [numeric](18, 2) NOT NULL CONSTRAINT [DF_VentaDetalle_Total]  DEFAULT ((0)),
	[MonImpuesto] [numeric](18, 2) NULL CONSTRAINT [DF_VentaDetalle_MonImpuesto]  DEFAULT ((0)),
	[PctImpuesto] [numeric](18, 2) NOT NULL CONSTRAINT [DF_VentaDetalle_PctImpuesto]  DEFAULT ((0)),
 CONSTRAINT [PK_VentaDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Pais]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Usuario]
GO
ALTER TABLE [dbo].[Impuestos]  WITH CHECK ADD  CONSTRAINT [FK_Impuestos_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Impuestos] CHECK CONSTRAINT [FK_Impuestos_Usuario]
GO
ALTER TABLE [dbo].[MovimientoProducto]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoProducto_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[MovimientoProducto] CHECK CONSTRAINT [FK_MovimientoProducto_Producto]
GO
ALTER TABLE [dbo].[MovimientoProducto]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoProducto_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[MovimientoProducto] CHECK CONSTRAINT [FK_MovimientoProducto_Usuario]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_Usuario]
GO
ALTER TABLE [dbo].[Presentacion]  WITH CHECK ADD  CONSTRAINT [FK_Presentacion_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Presentacion] CHECK CONSTRAINT [FK_Presentacion_Usuario]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Impuestos] FOREIGN KEY([IdImpuesto])
REFERENCES [dbo].[Impuestos] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Impuestos]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Presentacion] FOREIGN KEY([IdPresentacion])
REFERENCES [dbo].[Presentacion] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Presentacion]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Usuario]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Usuario]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Impuestos] FOREIGN KEY([IdImpuesto])
REFERENCES [dbo].[Impuestos] ([Id])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Impuestos]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Producto]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Venta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([Id])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Venta]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id Del Pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limite de Credito' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'LimiteCredito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estatus del Cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'Estatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Impuestos', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Impuestos', @level2type=N'COLUMN',@level2name=N'TipoImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Porcentaje de Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Impuestos', @level2type=N'COLUMN',@level2name=N'PctImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Impuestos', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Impuestos', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'IdProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Movimiento E (Entrada) S (Salida)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'TipoMovimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Movimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de movimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Documento que genero el Movimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'TipoDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id de Documento que genero el movimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MovimientoProducto', @level2type=N'COLUMN',@level2name=N'IdDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Espanol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'NombreEspanol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Ingles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'NombreIngles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Telefono del Pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'CodTelefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Presentacion', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Presentacion', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Presentacion', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id de Presentacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto', @level2type=N'COLUMN',@level2name=N'IdPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto', @level2type=N'COLUMN',@level2name=N'Valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Impuesto del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto', @level2type=N'COLUMN',@level2name=N'IdImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Producto', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la Venta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de la Factura en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'NroFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del CLiente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'IdCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SubTotal sin Descuentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'Subtotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Porcentaje de Descuento Aplicado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'PctDescuento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto del Descuento Aplicado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'MonDescuento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto del Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'MonImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Neto a Pagar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'TotalPagar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Creador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Venta', @level2type=N'COLUMN',@level2name=N'FecCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'idProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'IdImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Precio del Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'Precio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto de Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'MonImpuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Porcentaje de Impuesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaDetalle', @level2type=N'COLUMN',@level2name=N'PctImpuesto'
GO
