-- ======================================
-- Base de datos: tienda_simple
-- Autor: Jesus Martinez
-- Descripción: Ejemplo básico para GitHub
-- ======================================

-- Crear base de datos
CREATE DATABASE tienda_simple;
USE tienda_simple;

-- =========================
-- Tabla: usuarios
-- =========================
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE
);

-- =========================
-- Tabla: productos
-- =========================
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- =========================
-- Tabla: pedidos
-- =========================
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- =========================
-- Datos de ejemplo
-- =========================

INSERT INTO usuarios (nombre, correo, fecha_registro) VALUES
('Ana Pérez', 'ana@email.com', '2025-01-01'),
('Carlos Gómez', 'carlos@email.com', '2025-01-05');

INSERT INTO productos (nombre, precio, stock) VALUES
('Mouse USB', 35000, 10),
('Teclado Mecánico', 120000, 5);

INSERT INTO pedidos (id_usuario, fecha, total) VALUES
(1, '2025-01-10', 155000);
