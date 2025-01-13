CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    direccion TEXT
);

INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES 
    ('Juan Pérez', 'juanperez@email.com', '123456789', 'Calle Ficticia 123'),
    ('Ana Gómez', 'anagomez@email.com', '987654321', 'Avenida Siempre Viva 456'),
    ('Carlos López', 'carloslopez@email.com', '112233445', 'Plaza Mayor 789');

SELECT * FROM clientes;

SELECT * FROM clientes WHERE id = 1;

SELECT * FROM clientes WHERE nombre LIKE '%Juan%';

UPDATE clientes
SET telefono = '555123456', direccion = 'Nueva Calle 789'
WHERE id = 1;

UPDATE clientes
SET email = 'nuevoemail@email.com'
WHERE nombre = 'Carlos López';

DELETE FROM clientes WHERE id = 2;

DELETE FROM clientes WHERE nombre = 'Carlos López';
