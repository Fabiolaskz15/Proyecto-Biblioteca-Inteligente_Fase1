USE BibliotecaInteligente;
GO

-- Otorgar permiso de lectura ÚNICAMENTE sobre columnas públicas de la tabla usuario
GRANT SELECT ON dbo.usuario (nombre, apellidos, tipo_usuario) TO rol_lector_consulta;
GO

EXECUTE AS USER = 'usr_lector';

-- Consulta PERMITIDA (Solo columnas autorizadas)
SELECT TOP 5 nombre, apellidos, tipo_usuario FROM dbo.usuario;

-- Consulta DENEGADA (Intento de leer columna restringida 'correo' -> Error Msg 230)
SELECT correo FROM dbo.usuario;

REVERT;
GO

USE BibliotecaInteligente;
GO

-- Otorgar permiso de lectura sobre la vista estratégica de disponibilidad
GRANT SELECT ON dbo.vw_DisponibilidadCategorias TO rol_lector_consulta;
GO

EXECUTE AS USER = 'usr_lector';

-- Consulta PERMITIDA sobre la vista autorizada
SELECT * FROM dbo.vw_DisponibilidadCategorias;

-- Consulta DENEGADA sobre una vista financiera restringida (Error Msg 229)
SELECT * FROM dbo.vw_ControlMultasPendientes;

REVERT;
GO