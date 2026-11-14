USE BibliotecaInteligente;
GO

-- 1. Agregar una columna nueva (ADD)
ALTER TABLE multa 
ADD observaciones VARCHAR(200) NULL;
GO

-- 2. Modificar el tamaño y nulabilidad de una columna existente (ALTER COLUMN)
ALTER TABLE libro 
ALTER COLUMN editorial VARCHAR(120) NOT NULL;
GO

-- 3. Agregar una nueva restricción de validación (ADD CONSTRAINT CHECK)
ALTER TABLE usuario 
ADD CONSTRAINT CK_Usuario_Telefono_Len CHECK (LEN(telefono) >= 10);
GO

-- 4. Agregar una columna nueva en otra tabla (ADD)
ALTER TABLE personal 
ADD correo_institucional VARCHAR(100) NULL;
GO

-- 5. Eliminar una restricción y volverla a crear (DROP CONSTRAINT / ADD CONSTRAINT)
ALTER TABLE membresia 
DROP CONSTRAINT DF_Membresia_Estado;
GO

ALTER TABLE membresia 
ADD CONSTRAINT DF_Membresia_Estado DEFAULT 'Activa' FOR estado;
GO


-- Ver las columnas nuevas en las tablas modificadas (multa y personal)
SELECT * FROM multa;
SELECT * FROM personal;
GO

-- Ver la estructura detallada (columnas, tipos y tamaños) en SQL Server
SELECT 
    TABLE_NAME AS Tabla,
    COLUMN_NAME AS Columna,
    DATA_TYPE AS Tipo,
    CHARACTER_MAXIMUM_LENGTH AS Tamano,
    IS_NULLABLE AS Permite_Nulos
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME IN ('multa', 'libro', 'usuario', 'personal', 'membresia')
ORDER BY TABLE_NAME, ORDINAL_POSITION;
GO