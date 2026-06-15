-- Tablas Corregidas de Mercados
CREATE TABLE mercados (id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL UNIQUE, ubicacion VARCHAR(100) NOT NULL);

CREATE TABLE puestos (id SERIAL PRIMARY KEY, mercado_id INT REFERENCES mercados(id), nro_puesto VARCHAR(20) NOT NULL, dimensiones VARCHAR(50), tipo_producto VARCHAR(50) NOT NULL, estado_puesto VARCHAR(30) DEFAULT 'Activo', latitud DECIMAL(10,8), longitud DECIMAL(11,8), UNIQUE(mercado_id, nro_puesto));
