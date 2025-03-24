CREATE DATABASE IBEROMEX_P1;
USE IBEROMEX_P1;

INSERT INTO categoria_p1 (nombre) VALUES 
('Electrónica'), ('Ropa'), ('Hogar'), ('Deportes'), ('Juguetes'),
('Salud'), ('Belleza'), ('Alimentos'), ('Bebidas'), ('Automotriz');

INSERT INTO productos_p1 (nombre, descripcion, idCategoria, cantidad, precio) VALUES 
('iPhone 15 Pro Max', 'Iphone 15 Pro Max, 512GB', 1, 50, 18999.99),
('Macbook Air', 'Macbook Air, M2, 16GB RAM', 1, 30, 21500.00),
('Tenis Nike', 'Nike Air Zoom Pegasus 39', 2, 100, 2799.99),
('Aspiradora Dyson', 'Aspiradora sin cable Dyson V15', 3, 20, 13500.00),
('Bicicleta Benotto', 'Bicicleta de montaña Benotto', 4, 15, 14500.00),
('Muñeca Barbie', 'Muñeca Barbie edición especial', 5, 80, 899.99),
('Termómetro Digital', 'Termómetro infrarrojo sin contacto', 6, 200, 499.99),
('Crema CeraVe', 'Crema hidratante CeraVe Protector Solar', 7, 150, 349.99),
('Cereal Neskuik', 'Cereal de chocolate Neskui', 8, 300, 89.99),
('Coca-Cola 2L', 'Refresco Coca-Cola de 2 litros', 9, 500, 29.99);

INSERT INTO clientes_p1 (nombre, apellido, correo, contrasenia, direccion_envio, direccion_facturacion, telefono, categoria) VALUES 
('Atom', 'Nava', 'atom.munoznava@gmail.com', 'elmejorprogramador', 'Av. Insurgentes 123, CDMX', 'Av. Reforma 456, CDMX', '5512345678', 'Oro'),
('Fernanda', 'Canales', 'fernanda.martinez@yahoo.com', 'fermartinez2024', 'Calle 5 de Mayo 22, Monterrey', 'Calle Hidalgo 45, Monterrey', '8123456789', 'Plata'),
('Julen', 'Gómez', 'julen.julenn@hotmail.com', 'julen123', 'Calle Juárez 789, Guadalajara', 'Av. Vallarta 300, Guadalajara', '3311223344', 'Cobre'),
('Mariana', 'Torres', 'mariana.torres@outlook.com', 'marianatorres', 'Blvd. Díaz Ordaz 505, Tijuana', 'Zona Centro 23, Tijuana', '6649876543', 'Plata'),
('Claudia', 'Sheinbaum', 'clau.sheinbaum@gmail.com', 'clau4t', 'Colonia Roma 456, CDMX', 'Av. Polanco 99, CDMX', '5587654321', 'Oro'),
('Chumel', 'Torres', 'chumel.torres@live.com', 'chumelelfeo2024', 'Calle Revolución 12, Puebla', 'Calle 16 de Septiembre 80, Puebla', '2229876543', 'Cobre'),
('Khabib', 'Nurmagomedov', 'khabib.nurmagomedov@gmail.com', 'daegestan', 'Zona Río 21, Tijuana', 'Av. Universidad 100, Tijuana', '6641234567', 'Plata'),
('Andrea', 'Mares', 'andrea@gmail.com', 'andreamrs', 'Av. Juárez 200, León', 'Plaza Mayor 300, León', '4777654321', 'Cobre'),
('Mateo', 'Matadamas', 'mateo.matadamas@prodigy.net', 'hugosanchez', 'Colonia del Valle 345, Monterrey', 'Av. Garza Sada 120, Monterrey', '8125678901', 'Oro'),
('Elon', 'Musk', 'elon.musk@gmail.com', 'marte2030', 'Calle San Pedro 88, Mérida', 'Zona Hotelera 12, Mérida', '9998765432', 'Plata');

INSERT INTO metodo_pago_p1 (nombre) VALUES 
('Tarjeta de Crédito'), ('Transferencia Electrónica'), ('Pago en Tienda'), ('Depósito Bancario');

INSERT INTO compras_p1 (idCliente, fecha, total) VALUES 
(1, '2025-03-10 14:30:00', 4599.99),
(2, '2025-03-11 09:15:00', 18999.99),
(3, '2025-03-12 17:45:00', 21500.00),
(4, '2025-03-13 13:20:00', 899.99),
(5, '2025-03-14 18:00:00', 2799.99),
(6, '2025-03-15 20:45:00', 14500.00),
(7, '2025-03-16 10:30:00', 499.99),
(8, '2025-03-17 15:10:00', 89.99),
(9, '2025-03-18 12:05:00', 29.99),
(10, '2025-03-19 19:25:00', 13500.00);

INSERT INTO detalle_compras_p1 (idCompra, idProducto, cantidad, precio_unitario) VALUES 
(1, 3, 2, 2799.99),
(2, 1, 1, 18999.99),
(3, 2, 1, 21500.00),
(4, 6, 1, 899.99),
(5, 3, 1, 2799.99),
(6, 5, 1, 14500.00),
(7, 7, 1, 499.99),
(8, 9, 2, 89.99),
(9, 10, 1, 29.99),
(10, 4, 1, 13500.00);

INSERT INTO pagos_p1 (idCompra, idMetodo, monto, fecha_pago, factura) VALUES 
(1, 1, 4599.99, '2025-03-10 15:00:00', 'FAC-0001'),
(2, 2, 18999.99, '2025-03-11 09:30:00', 'FAC-0002'),
(3, 1, 21500.00, '2025-03-12 18:00:00', 'FAC-0003'),
(4, 3, 899.99, '2025-03-13 13:45:00', 'FAC-0004'),
(5, 1, 2799.99, '2025-03-14 18:20:00', 'FAC-0005'),
(6, 4, 14500.00, '2025-03-15 21:00:00', 'FAC-0006'),
(7, 2, 499.99, '2025-03-16 10:45:00', 'FAC-0007'),
(8, 3, 89.99, '2025-03-17 15:30:00', 'FAC-0008'),
(9, 4, 29.99, '2025-03-18 12:20:00', 'FAC-0009'),
(10, 1, 13500.00, '2025-03-19 19:45:00', 'FAC-0010');

INSERT INTO asesores_p1 (nombre, correo, contrasenia) VALUES 
('Luis Pérez', 'luis.perez@tienda.com', 'luisperez123'),
('María Gómez', 'maria.gomez@tienda.com', 'mariagomez456'),
('José Hernández', 'jose.hernandez@tienda.com', 'josehernandez789'),
('Ana Ramírez', 'ana.ramirez@tienda.com', 'anaramirez101'),
('Fernando López', 'fernando.lopez@tienda.com', 'fernandolopez2024'),
('Diana Torres', 'diana.torres@tienda.com', 'dianatorres555'),
('Raúl Castro', 'raul.castro@tienda.com', 'raulcastro888'),
('Sofía Medina', 'sofia.medina@tienda.com', 'sofiamedina999'),
('Carlos Villanueva', 'carlos.villanueva@tienda.com', 'carlosvilla777'),
('Patricia Rojas', 'patricia.rojas@tienda.com', 'patriciarojas111');

INSERT INTO tickets_p1 (idCliente, idAsesor, descripcion, estado, calificacion, fecha_apertura, fecha_cierre) VALUES 
(1, 2, 'Problema con el pago de mi compra.', 'Resuelto', 5, '2025-03-10 09:00:00', '2025-03-10 10:30:00'),
(2, 3, 'No recibí mi pedido a tiempo.', 'Resuelto', 4, '2025-03-11 11:15:00', '2025-03-12 14:00:00'),
(3, 1, 'Producto defectuoso, necesito devolución.', 'Pendiente', NULL, '2025-03-12 15:45:00', NULL),
(4, 5, 'Quiero cambiar mi dirección de envío.', 'Resuelto', 5, '2025-03-13 08:20:00', '2025-03-13 09:10:00'),
(5, 7, 'No puedo acceder a mi cuenta.', 'Resuelto', 4, '2025-03-14 13:00:00', '2025-03-14 14:30:00'),
(6, 4, 'Duda sobre los métodos de pago disponibles.', 'Resuelto', 5, '2025-03-15 16:40:00', '2025-03-15 17:10:00'),
(7, NULL, 'Quiero cancelar una compra, ¿cómo lo hago?', 'Pendiente', NULL, '2025-03-16 09:30:00', NULL),
(8, 8, '¿Cuánto tiempo tarda en llegar mi pedido?', 'Resuelto', 3, '2025-03-17 12:15:00', '2025-03-17 13:00:00'),
(9, NULL, 'Problema con la facturación de mi compra.', 'Pendiente', NULL, '2025-03-18 14:50:00', NULL),
(10, 6, 'Quiero información sobre descuentos para clientes Oro.', 'Resuelto', 5, '2025-03-19 10:00:00', '2025-03-19 11:45:00');

INSERT INTO devoluciones_p1 (idDetalle, idTicket, fechaDevolucion, cantidadDevuelta, motivo, estado, reembolso)  
VALUES  
(1, 3, '2025-03-10', 2, 'Producto defectuoso', 'Aprobada', 500.00),  
(2, NULL, '2025-02-20', 1, 'No era lo que esperaba', 'Pendiente', 250.00),  
(5, 7, '2025-01-15', 3, 'Fecha de expiración cercana', 'Aprobada', 750.00),  
(8, 12, '2025-03-05', 1, 'Producto equivocado enviado', 'Rechazada', 0.00),  
(10, NULL, '2025-02-25', 2, 'Tamaño incorrecto', 'Pendiente', 400.00),  
(15, 5, '2025-01-30', 1, 'Dañado en el envío', 'Aprobada', 300.00),  
(18, NULL, '2025-02-10', 4, 'Pedido duplicado', 'Aprobada', 800.00),  
(20, 9, '2025-03-12', 1, 'Cambio de opinión', 'Rechazada', 0.00),  
(22, NULL, '2025-02-28', 3, 'Producto roto', 'Aprobada', 900.00),  
(25, 14, '2025-03-18', 2, 'Defecto de fábrica', 'Pendiente', 600.00);  





