--Inserts

INSERT INTO producto (codigo_producto, nombre, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor, codigo_proveedor, codigo_receta)
VALUES
(1, 'Leche', 'CGAMANA DISTRIBUIDOR', 'Leche entera', 100, 1.5, 1, 1001, 1),
(2, 'Arroz', 'CGAMANA DISTRIBUIDOR', 'Arroz blanco', 50, 2.0, 1.5, 1002, 2),
(3, 'Huevos', 'CGAMANA DISTRIBUIDOR', 'Huevos frescos', 80, 1.0, 0.8, 1003, 3),
(4, 'Pan', 'CGAMANA DISTRIBUIDOR', 'Pan integral', 120, 1.2, 1, 1004, 4),
(5, 'Queso', 'CGAMANA DISTRIBUIDOR', 'Queso cheddar', 60, 2.5, 2, 1005, 5),
(6, 'Tomate', 'Distribuidor el criollo', 'Tomate fresco', 40, 0.5, 0.4, 1006, 6),
(7, 'Pollo', 'Distribuidor el criollo', 'Pollo orgánico', 70, 3.0, 2.5, 1007, 7),
(8, 'Pasta', 'Distribuidor el criollo', 'Pasta de trigo', 90, 1.8, 1.2, 1008, 8),
(9, 'Aceite de oliva', 'Distribuidor S.R.L', 'Aceite de oliva virgen', 110, 4.0, 3.5, 1009, 9),
(10, 'Azúcar', 'CGAMANA DISTRIBUIDOR', 'Azúcar blanca', 75, 1.2, 1.0, 1010, 10);

INSERT INTO recetas (codigo_receta, ingredientes, receta, imagen)
VALUES
(1, '1 litro de leche', 'Calentar la leche y servir caliente.', NULL),
(2, '1 taza de arroz, 2 tazas de agua', 'Cocinar el arroz con el agua hasta que esté tierno.', NULL),
(3, '3 huevos, sal y pimienta al gusto', 'Batir los huevos con sal y pimienta y cocinar en sartén hasta dorar.', NULL),
(4, '4 rebanadas de pan', 'Tostar el pan y servir caliente.', NULL),
(5, '200g de queso cheddar', 'Cortar el queso en rodajas y servir.', NULL),
(6, '2 tomates', 'Cortar los tomates en rodajas y servir crudos.', NULL),
(7, '500g de pechuga de pollo', 'Cocinar el pollo a la parrilla y servir caliente.', NULL),
(8, '250g de pasta', 'Cocinar la pasta en agua hirviendo con sal hasta que esté al dente.', NULL),
(9, '100ml de aceite de oliva', 'Agregar el aceite de oliva a la preparación según gusto.', NULL),
(10, '200g de azúcar', 'Agregar el azúcar a la preparación según gusto.', NULL);

INSERT INTO menu_items (codigo_menu, receta, imagen, codigo_receta, precio)
VALUES
(1, 'Leche caliente', NULL, 1, '1.50'),
(2, 'Arroz blanco', NULL, 2, '2.00'),
(3, 'Huevos revueltos', NULL, 3, '1.00'),
(4, 'Pan tostado', NULL, 4, '1.20'),
(5, 'Queso cheddar', NULL, 5, '2.50'),
(6, 'Tomate fresco', NULL, 6, '0.50'),
(7, 'Pollo a la parrilla', NULL, 7, '3.00'),
(8, 'Pasta al dente', NULL, 8, '1.80'),
(9, 'Aceite de oliva', NULL, 9, '4.00'),
(10, 'Café con azúcar', NULL, 10, '1.50');

INSERT INTO pago (codigo_cliente, codigo_pago, forma_pago, fecha_pago, total)
VALUES
(10001, 1, 'Efectivo', '2024-05-01', 50.00),
(10002, 2, 'Tarjeta de crédito', '2024-05-02', 75.50),
(10003, 3, 'Transferencia bancaria', '2024-05-03', 120.25),
(10004, 4, 'Cheque', '2024-05-04', 90.75),
(10005, 5, 'Efectivo', '2024-05-05', 60.00),
(10006, 6, 'Tarjeta de débito', '2024-05-06', 85.25),
(10007, 7, 'Transferencia bancaria', '2024-05-07', 110.50),
(10008, 8, 'Cheque', '2024-05-08', 70.25),
(10009, 9, 'Efectivo', '2024-05-09', 100.00),
(10010, 10, 'Tarjeta de crédito', '2024-05-10', 95.75);

INSERT INTO cliente (codigo_cliente, nombre, segundo_nombre, apellido, telefono, dni, codigo_postal, codigo_representante_venta)
VALUES
(10001, 'Juan', NULL, 'Pérez', '123456789', 123456789, 12345, 1),
(10002, 'María', NULL, 'Gómez', '987654321', 987654321, 54321, 2),
(10003, 'Pedro', NULL, 'Martínez', '111222333', 111222333, 67890, 3),
(10004, 'Laura', NULL, 'Rodríguez', '444555666', 444555666, 98765, 4),
(10005, 'Carlos', NULL, 'López', '777888999', 777888999, 34567, 5),
(10006, 'Ana', NULL, 'Hernández', '555666777', 555666777, 23456, 6),
(10007, 'Miguel', NULL, 'Sánchez', '222333444', 222333444, 87654, 7),
(10008, 'Elena', NULL, 'Díaz', '888999000', 888999000, 45678, 8),
(10009, 'Sofía', NULL, 'Fernández', '333444555', 333444555, 76543, 9),
(10010, 'David', NULL, 'Ruiz', '999000111', 999000111, 56789, 10);

INSERT INTO pedido (codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, codigo_proveedor)
VALUES
(1, '2024-05-01', '2024-05-03', '2024-05-03', 'Entregado', 'Todo correcto', 1001),
(2, '2024-05-02', '2024-05-04', '2024-05-04', 'Entregado', 'Buen servicio', 1002),
(3, '2024-05-03', '2024-05-05', '2024-05-06', 'En proceso', 'Esperando entrega', 1003),
(4, '2024-05-04', '2024-05-06', NULL, 'En proceso', 'Sin comentarios', 1004),
(5, '2024-05-05', '2024-05-07', NULL, 'Pendiente', NULL, 1005),
(6, '2024-05-06', '2024-05-08', NULL, 'Pendiente', NULL, 1006),
(7, '2024-05-07', '2024-05-09', NULL, 'Pendiente', NULL, 1007),
(8, '2024-05-08', '2024-05-10', NULL, 'Pendiente', NULL, 1008),
(9, '2024-05-09', '2024-05-11', NULL, 'Pendiente', NULL, 1009),
(10, '2024-05-10', '2024-05-12', NULL, 'Pendiente', NULL, 1010);

INSERT INTO proveedores (codigo_proveedor, nombre, telefono, email, region, pais, codigo_postal)
VALUES
(1001, 'CGAMANA DISTRIBUIDOR', '123456789', 'cgamana@gmail.com', 'Región 1', 'País 1', 12345),
(1002, 'Distribuidor el criollo', '987654321', 'criollob@gmail.com', 'Región 2', 'País 2', 54321),
(1003, 'Distribuidor S.R.L', '111222333', 'srldistribuidora@gmail.com', 'Región 3', 'País 3', 67890),
(1004, 'Montiel distribuciones', '444555666', 'motiel@gmail.com', 'Región 4', 'País 4', 98765),
(1005, 'Distribuidora los nogales', '777888999', 'nogales@gmail.com', 'Región 5', 'País 5', 34567),
(1006, 'Distribuidora quintela', '555666777', 'quintela@hotmail.com', 'Región 6', 'País 6', 23456),
(1007, 'Velike Distribuidora saludable', '222333444', 'velike@gmail.com', 'Región 7', 'País 7', 87654),
(1008, 'Distribuidora alpes', '888999000', 'alpes@gmail.com', 'Región 8', 'País 8', 45678),
(1009, 'Pan Rallado Sebastian', '333444555', 'sebastianpanrallado@gmail.com', 'Región 9', 'País 9', 76543),
(1010, 'Distribuidora El granate', '999000111', 'elgranate@gmail.com', 'Región 10', 'País 10', 56789);

INSERT INTO empleado (codigo_empleado, nombre, apellido, extension, email, telefono, codigo_oficina, codigo_jefe)
VALUES
(10001, 'Juan', 'López', '123', 'juanlopez@gmail.com', '123456789', 1, NULL),
(10002, 'María', 'González', '456', 'mariagonzalez@gmail.com', '987654321', 2, 10001),
(10003, 'Pedro', 'Rodríguez', '789', 'pedrorodriguez@gmail.com', '111222333', 3, 10001),
(10004, 'Laura', 'Martínez', '321', 'lauramartinez@gmail.com', '444555666', 4, 10002),
(10005, 'Carlos', 'Sánchez', '654', 'carlossanchez@gmail.com', '777888999', 5, 10002),
(10006, 'Ana', 'Pérez', '987', 'anaperez@gmail.com', '555666777', 6, 10003),
(10007, 'Miguel', 'Fernández', '543', 'miguelfernandez@gmail.com', '222333444', 7, 10003),
(10008, 'Elena', 'Gómez', '876', 'elenagomez@gmail.com', '888999000', 8, 10004),
(10009, 'Sofía', 'Ruiz', '109', 'sofiaruiz@gmail.com', '333444555', 9, 10004),
(10010, 'David', 'Díaz', '210', 'daviddiaz@gmail.com', '999000111', 10, 10005);


INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, direccion, direccion2, telefono, codigo_jefe_oficina)
VALUES
(1, 'Buenos aires', 'Argentina', NULL, 12345, '	General Hornos 690 ', 'Dirección 2', '123456789', 10001),
(2, 'Buenos aires', 'Argentina', NULL, 54321, '	Av Moreno Sur 1640', 'Dirección 4', '987654321', 10002),
(3, 'Buenos aires', 'Argentina', NULL, 67890, '	Libertad 1617', 'Dirección 6', '111222333', 10003),
(4, 'Buenos aires', 'Argentina', NULL, 98765, '	Hipólito Yrigoyen 4000', 'Dirección 8', '444555666', 10004),
(5, 'Corippo', 'Suiza', NULL, 34567, '181, Chemin des Alpages', 'Dirección 10', '777888999', 10005),
(6, 'Wuhan', 'China', NULL, 23456, ' Dong Liao Xian Wei Dang Shi Yan Jiu Ban Gong Shi （ Xian Wei Wu Lou ）', 'Dirección 12', '555666777', 10006),
(7, 'Buenos aires', 'Argentina', NULL, 87654, '	Av de Mayo 878', 'Dirección 14', '222333444', 10007),
(8, 'Buenos aires', 'Argentina', NULL, 45678, '	Pachecho de Melo', 'Dirección 16', '888999000', 10008),
(9, 'Buenos aires', 'Argentina', NULL, 76543, '	Av Santa Fe 3202', 'Dirección 18', '333444555', 10009),
(10, 'Buenos aires', 'Argentina', NULL, 56789, 'Corrientes 1098', 'Dirección 20', '999000111', 10010);

INSERT INTO detalle_pedido (codigo_pedido, codigo_producto, cantidad, precio_unidad, detalle_pedidocol)
VALUES
(1, 1, 5, 1.5, 7.50),
(1, 2, 3, 2.0, 6.00),
(2, 3, 10, 1.0, 10.00),
(2, 4, 2, 1.2, 2.40),
(3, 5, 4, 2.5, 10.00),
(3, 6, 6, 0.5, 3.00),
(4, 7, 2, 3.0, 6.00),
(4, 8, 5, 1.8, 9.00),
(5, 9, 3, 4.0, 12.00),
(5, 10, 5, 1.2, 6.00);


INSERT INTO orden (codigo_orden, codigo_cliente, impuestos, descuentos, subtotal_orden, orden_detalles, cuit, firma)
VALUES
(1, 10001, '5%', '10%', '100.00', 'Pedido confirmado', '123456789', 'Firma cliente 1'),
(2, 10002, '8%', '15%', '200.00', 'Pedido confirmado', '987654321', 'Firma cliente 2'),
(3, 10003, '6%', '12%', '150.00', 'Pedido en proceso', '111222333', NULL),
(4, 10004, '7%', '10%', '175.00', 'Pedido en proceso', '444555666', NULL),
(5, 10005, '5%', '8%', '120.00', 'Pedido pendiente', '777888999', NULL),
(6, 10006, '9%', '20%', '80.00', 'Pedido pendiente', '555666777', NULL),
(7, 10007, '6%', '10%', '90.00', 'Pedido pendiente', '222333444', NULL),
(8, 10008, '7%', '15%', '180.00', 'Pedido pendiente', '888999000', NULL),
(9, 10009, '8%', '18%', '160.00', 'Pedido pendiente', '333444555', NULL),
(10, 10010, '5%', '12%', '140.00', 'Pedido pendiente', '999000111', NULL);

INSERT INTO deposito (codigo_deposito, codigo_producto, codigo_encargado_deposito, cantidad_en_stock_actual, telefono)
VALUES
(1, 1, 10001, 50, '123456789'),
(2, 2, 10002, 30, '987654321'),
(3, 3, 10003, 70, '111222333'),
(4, 4, 10004, 40, '444555666'),
(5, 5, 10005, 20, '777888999'),
(6, 6, 10006, 60, '555666777'),
(7, 7, 10007, 35, '222333444'),
(8, 8, 10008, 45, '888999000'),
(9, 9, 10009, 55, '333444555'),
(10, 10, 10010, 25, '999000111');

