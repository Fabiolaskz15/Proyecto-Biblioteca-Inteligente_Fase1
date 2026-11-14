
-- PROYECTO: Biblioteca Inteligente (Fase 2: Script DDL y Constraints)

CREATE DATABASE BibliotecaInteligente;
GO
USE BibliotecaInteligente;
GO

-- 1. Tabla: ROL
CREATE TABLE rol (
    id_rol INT IDENTITY(1,1),
    nombre_rol VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NULL,
    CONSTRAINT PK_Rol PRIMARY KEY (id_rol),
    CONSTRAINT UQ_Rol_Nombre UNIQUE (nombre_rol)
);
GO

-- 2. Tabla: USUARIO
CREATE TABLE usuario (
    id_usuario INT IDENTITY(1,1),
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(80) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NULL,
    tipo_usuario VARCHAR(30) NOT NULL,
    id_rol INT NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (id_usuario),
    CONSTRAINT UQ_Usuario_Correo UNIQUE (correo),
    CONSTRAINT CK_Usuario_Tipo CHECK (tipo_usuario IN ('Estudiante', 'Docente', 'Personal', 'Externo')),
    CONSTRAINT FK_Usuario_Rol FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);
GO

-- 3. Tabla: MEMBRESIA
CREATE TABLE membresia (
    id_membresia INT IDENTITY(1,1),
    id_usuario INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado VARCHAR(20) NOT NULL CONSTRAINT DF_Membresia_Estado DEFAULT 'Activa',
    CONSTRAINT PK_Membresia PRIMARY KEY (id_membresia),
    CONSTRAINT CK_Membresia_Estado CHECK (estado IN ('Activa', 'Suspendida', 'Vencida')),
    CONSTRAINT FK_Membresia_Usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
GO

-- 4. Tabla: PERSONAL
CREATE TABLE personal (
    id_personal INT IDENTITY(1,1),
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(80) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    id_rol INT NOT NULL,
    CONSTRAINT PK_Personal PRIMARY KEY (id_personal),
    CONSTRAINT CK_Personal_Turno CHECK (turno IN ('Matutino', 'Vespertino', 'Mixto')),
    CONSTRAINT FK_Personal_Rol FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);
GO

-- 5. Tabla: CATEGORIA
CREATE TABLE categoria (
    id_categoria INT IDENTITY(1,1),
    nombre_categoria VARCHAR(60) NOT NULL,
    descripcion VARCHAR(250) NULL,
    CONSTRAINT PK_Categoria PRIMARY KEY (id_categoria),
    CONSTRAINT UQ_Categoria_Nombre UNIQUE (nombre_categoria)
);
GO

-- 6. Tabla: LIBRO
CREATE TABLE libro (
    id_libro INT IDENTITY(1,1),
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(120) NOT NULL,
    editorial VARCHAR(80) NULL,
    anio_publicacion INT NULL,
    id_categoria INT NOT NULL,
    CONSTRAINT PK_Libro PRIMARY KEY (id_libro),
    CONSTRAINT CK_Libro_Anio CHECK (anio_publicacion > 1500 AND anio_publicacion <= YEAR(GETDATE())),
    CONSTRAINT FK_Libro_Categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);
GO

-- 7. Tabla: EJEMPLAR
CREATE TABLE ejemplar (
    id_ejemplar INT IDENTITY(1,1),
    id_libro INT NOT NULL,
    codigo_barras VARCHAR(50) NOT NULL,
    estado_fisico VARCHAR(30) NOT NULL CONSTRAINT DF_Ejemplar_Estado DEFAULT 'Disponible',
    CONSTRAINT PK_Ejemplar PRIMARY KEY (id_ejemplar),
    CONSTRAINT UQ_Ejemplar_Barcode UNIQUE (codigo_barras),
    CONSTRAINT CK_Ejemplar_Estado CHECK (estado_fisico IN ('Disponible', 'Prestado', 'Dañado', 'Extraviado')),
    CONSTRAINT FK_Ejemplar_Libro FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);
GO

-- 8. Tabla: PRESTAMO
CREATE TABLE prestamo (
    id_prestamo INT IDENTITY(1,1),
    id_usuario INT NOT NULL,
    id_personal INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion_esperada DATE NOT NULL,
    estado_prestamo VARCHAR(20) NOT NULL CONSTRAINT DF_Prestamo_Estado DEFAULT 'Activo',
    CONSTRAINT PK_Prestamo PRIMARY KEY (id_prestamo),
    CONSTRAINT CK_Prestamo_Estado CHECK (estado_prestamo IN ('Activo', 'Concluido', 'Cancelado')),
    CONSTRAINT FK_Prestamo_Usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    CONSTRAINT FK_Prestamo_Personal FOREIGN KEY (id_personal) REFERENCES personal(id_personal)
);
GO

-- 9. Tabla: DETALLE_PRESTAMO
CREATE TABLE detalle_prestamo (
    id_detalle INT IDENTITY(1,1),
    id_prestamo INT NOT NULL,
    id_ejemplar INT NOT NULL,
    devolucion_real DATE NULL,
    CONSTRAINT PK_DetallePrestamo PRIMARY KEY (id_detalle),
    CONSTRAINT FK_Detalle_Prestamo FOREIGN KEY (id_prestamo) REFERENCES prestamo(id_prestamo),
    CONSTRAINT FK_Detalle_Ejemplar FOREIGN KEY (id_ejemplar) REFERENCES ejemplar(id_ejemplar)
);
GO

-- 10. Tabla: MULTA
CREATE TABLE multa (
    id_multa INT IDENTITY(1,1),
    id_prestamo INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL CONSTRAINT DF_Multa_Monto DEFAULT 0.00,
    dias_retraso INT NOT NULL CONSTRAINT DF_Multa_Dias DEFAULT 0,
    estatus_pago VARCHAR(20) NOT NULL CONSTRAINT DF_Multa_Estatus DEFAULT 'Pendiente',
    CONSTRAINT PK_Multa PRIMARY KEY (id_multa),
    CONSTRAINT CK_Multa_Monto CHECK (monto >= 0.00),
    CONSTRAINT CK_Multa_Dias CHECK (dias_retraso >= 0),
    CONSTRAINT CK_Multa_Estatus CHECK (estatus_pago IN ('Pendiente', 'Pagado', 'Condonado')),
    CONSTRAINT FK_Multa_Prestamo FOREIGN KEY (id_prestamo) REFERENCES prestamo(id_prestamo)
);
GO