CREATE TABLE categoria_p1(
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL
);

CREATE TABLE productos_p1(
        idProducto INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(64) NOT NULL,
        descripcion VARCHAR(255),
        cantidad INT NOT NULL CHECK (cantidad >= 0),
        precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0),
        idCategoria INT NOT NULL,
        CONSTRAINT fk_idCategoria FOREIGN KEY (idCategoria) REFERENCES categoria_p1(idCategoria) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE clientes_p1(
  idCliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(32) NOT NULL,
  apellido VARCHAR(32) NOT NULL,
  correo VARCHAR(64) NOT NULL,
  telefono VARCHAR(16) NOT NULL,
  categoria ENUM('Cobre', 'Plata', 'Oro') DEFAULT 'Cobre' NOT NULL,
  direccion_envio VARCHAR(255) NOT NULL,
  direccion_facturacion VARCHAR(255) NOT NULL,
  contrasenia VARCHAR(255) NOT NULL
);

CREATE TABLE compras_p1(
    idCompra INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL CHECK (total >= 0),
    idCliente INT NOT NULL,
    CONSTRAINT fk_idCliente FOREIGN KEY(idCliente) REFERENCES clientes_p1(idCliente) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla de detalle de compras (relaciona compras con productos)
CREATE TABLE detalle_compras_p1 (
    idDetalle INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL CHECK (precio_unitario >= 0),
    idCompra INT NOT NULL,
    FOREIGN KEY (idCompra) REFERENCES compras_p1(idCompra) ON DELETE CASCADE ON UPDATE CASCADE,
    idProducto INT NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES productos_p1(idProducto) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla de métodos de pago
CREATE TABLE metodo_pago_p1 (
    idMetodo INT AUTO_INCREMENT PRIMARY KEY,
    nombre ENUM('Deposito Bancario', 'Tarjeta de Crédito', 'Transferencia Electrónica', 'Pago en Tienda') NOT NULL
);

-- Tabla de pagos
CREATE TABLE pagos_p1 (
    idPago INT AUTO_INCREMENT PRIMARY KEY,
    idCompra INT NOT NULL,
    idMetodo INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL CHECK (monto >= 0),
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    factura VARCHAR(125) NOT NULL,
    CONSTRAINT fk_idCompra FOREIGN KEY (idCompra) REFERENCES compras_p1(idCompra) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_idMetodo FOREIGN KEY (idMetodo) REFERENCES metodo_pago_p1(idMetodo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE asesores_p1(
    idAsesor INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(32) NOT NULL,
    correo VARCHAR(64) NOT NULL,
    contrasenia VARCHAR(255) NOT NULL
);

-- La llave externa fk_idCliente se repite en otra tabla, por lo que cambiamos el nombre de la llave externa  a fk_idCliente2
CREATE TABLE tickets_p1 (
                            idTicket INT AUTO_INCREMENT PRIMARY KEY,
                            idCliente INT NOT NULL,
                            idAsesor INT DEFAULT NULL,
                            descripcion VARCHAR(255) NOT NULL,
                            estado ENUM('Pendiente', 'Resuelto') DEFAULT 'Pendiente',
                            calificacion DECIMAL(4,2),
                            fecha_apertura DATETIME DEFAULT CURRENT_TIMESTAMP,
                            fecha_cierre DATETIME DEFAULT NULL,
                            CONSTRAINT fk_idCliente2 FOREIGN KEY (idCliente) REFERENCES clientes_p1(idCliente) ON DELETE CASCADE ON UPDATE CASCADE,
                            CONSTRAINT fk_idAsesor FOREIGN KEY (idAsesor) REFERENCES asesores_p1(idAsesor) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE devoluciónes_p1(
    idDevolucion INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    -- Por determinar
);
