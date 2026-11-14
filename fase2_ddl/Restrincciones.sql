USE BibliotecaInteligente;
GO


-- PRUEBA 1: Violación de UNIQUE (UQ_Usuario_Correo)
INSERT INTO usuario (nombre, apellidos, correo, tipo_usuario, id_rol) 
VALUES ('Carlos', 'Pérez', 'vanessa.kats@tesj.edu.mx', 'Estudiante', 1);
GO

-- PRUEBA 2: Violación de CHECK (CK_Multa_Monto)
INSERT INTO multa (id_prestamo, monto, dias_retraso, estatus_pago) 
VALUES (1, -150.00, 3, 'Pendiente');
GO


-- PRUEBA 3: Violación de FOREIGN KEY (FK_Libro_Categoria)
INSERT INTO libro (titulo, autor, editorial, anio_publicacion, id_categoria) 
VALUES ('Base de Datos Avanzadas', 'Elmasri', 'McGraw-Hill', 2022, 9999);
GO

-- PRUEBA 4: Violación de NOT NULL 
INSERT INTO rol (descripcion) 
VALUES ('Rol sin nombre principal');
GO

-- PRUEBA 5: Violación de CHECK de Teléfono (CK_Usuario_Telefono_Len)
INSERT INTO usuario (nombre, apellidos, correo, telefono, tipo_usuario, id_rol) 
VALUES ('Sofía', 'López', 'sofia.lopez@tesj.edu.mx', '72212', 'Estudiante', 1);
GO