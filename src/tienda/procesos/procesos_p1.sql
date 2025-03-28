-- TAREA 11
DELIMITER //

CREATE PROCEDURE calcular_total_venta(
    IN p_idProducto INT,
    IN p_cantidad INT,
    IN p_idCliente INT,
    OUT p_monto_total DECIMAL(10,2),
    OUT p_envio DECIMAL(10,2)
)
BEGIN
    DECLARE v_precio_unitario DECIMAL(10,2);
    DECLARE v_categoria_cliente ENUM('Cobre', 'Plata', 'Oro');
    
    -- Obtener el precio unitario del producto
    SELECT precio INTO v_precio_unitario 
    FROM productos_p1 
    WHERE idProducto = p_idProducto;
    
    -- Calcular el monto total de la compra
    SET p_monto_total = v_precio_unitario * p_cantidad;
    
    -- Obtener la categoría del cliente
    SELECT categoria INTO v_categoria_cliente
    FROM clientes_p1 
    WHERE idCliente = p_idCliente;
    
    -- Calcular el costo de envío
    IF v_categoria_cliente = 'Oro' THEN
        SET p_envio = 0; -- Envío gratis para clientes Oro
    ELSEIF v_categoria_cliente = 'Plata' THEN
        SET p_envio = 50; -- Envío reducido para clientes Plata
    ELSE
        SET p_envio = 100; -- Costo de envío estándar para clientes Cobre
    END IF;

END //

DELIMITER ;
