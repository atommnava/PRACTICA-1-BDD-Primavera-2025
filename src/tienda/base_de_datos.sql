CREATE DATABASE IBEROMEX_P1;
USE IBEROMEX_P1;

INSERT INTO categoria_p1 (nombre) VALUES 
('Electrónica'), ('Ropa'), ('Hogar'), ('Deportes'), ('Juguetes'),
('Salud'), ('Belleza'), ('Alimentos'), ('Bebidas'), ('Automotriz');

INSERT INTO productos_p1 (nombre, descripcion, idCategoria, cantidad, precio) VALUES 
('Smartphone Samsung', 'Samsung Galaxy S23, 128GB', 1, 50, 18999.99),
('Laptop HP', 'HP Pavilion 15, Ryzen 7, 16GB RAM', 1, 30, 21500.00),
('Zapatillas Nike', 'Nike Air Zoom Pegasus 39', 2, 100, 2799.99),
('Aspiradora Dyson', 'Aspiradora sin cable Dyson V15', 3, 20, 13500.00),
('Bicicleta Trek', 'Bicicleta de montaña Trek Marlin 7', 4, 15, 14500.00),
('Muñeca Barbie', 'Muñeca Barbie edición especial', 5, 80, 899.99),
('Termómetro Digital', 'Termómetro infrarrojo sin contacto', 6, 200, 499.99),
('Crema Hidratante', 'Crema hidratante Neutrogena Hydro Boost', 7, 150, 349.99),
('Cereal Kellogg’s', 'Cereal de chocolate Kellogg’s', 8, 300, 89.99),
('Coca-Cola 2L', 'Refresco Coca-Cola de 2 litros', 9, 500, 29.99);

INSERT INTO clientes_p1 (nombre, apellido, correo, contrasenia, direccion_envio, direccion_facturacion, telefono, categoria) VALUES 
('Carlos', 'Ramírez', 'carlos.ramirez@gmail.com', 'password123', 'Av. Insurgentes 123, CDMX', 'Av. Reforma 456, CDMX', '5512345678', 'Oro'),
('Fernanda', 'López', 'fernanda.lopez@yahoo.com', 'ferlopez2024', 'Calle 5 de Mayo 22, Monterrey', 'Calle Hidalgo 45, Monterrey', '8123456789', 'Plata'),
('Alejandro', 'Gómez', 'alejandro.gomez@hotmail.com', 'alexgomez321', 'Calle Juárez 789, Guadalajara', 'Av. Vallarta 300, Guadalajara', '3311223344', 'Cobre'),
('Mariana', 'Torres', 'mariana.torres@outlook.com', 'marianatorres', 'Blvd. Díaz Ordaz 505, Tijuana', 'Zona Centro 23, Tijuana', '6649876543', 'Plata'),
('Javier', 'Fernández', 'javi.fernandez@gmail.com', 'javierf123', 'Colonia Roma 456, CDMX', 'Av. Polanco 99, CDMX', '5587654321', 'Oro'),
('Lucía', 'Martínez', 'lucia.martinez@live.com', 'luciamtz2024', 'Calle Revolución 12, Puebla', 'Calle 16 de Septiembre 80, Puebla', '2229876543', 'Cobre'),
('Roberto', 'Castro', 'roberto.castro@gmail.com', 'robertcastro', 'Zona Río 21, Tijuana', 'Av. Universidad 100, Tijuana', '6641234567', 'Plata'),
('Andrea', 'Hernández', 'andrea.hdz@gmail.com', 'andreahdz', 'Av. Juárez 200, León', 'Plaza Mayor 300, León', '4777654321', 'Cobre'),
('Hugo', 'Sánchez', 'hugo.sanchez@prodigy.net', 'hugosanchez', 'Colonia del Valle 345, Monterrey', 'Av. Garza Sada 120, Monterrey', '8125678901', 'Oro'),
('Patricia', 'Rojas', 'patricia.rojas@gmail.com', 'patyrojas', 'Calle San Pedro 88, Mérida', 'Zona Hotelera 12, Mérida', '9998765432', 'Plata');
