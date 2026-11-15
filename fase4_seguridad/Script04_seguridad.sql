
USE master;
GO

-- Creación de Logins a nivel servidor
CREATE LOGIN login_admin_biblio WITH PASSWORD = 'AdminBiblio2026!', CHECK_POLICY = OFF;
CREATE LOGIN login_bibliotecario WITH PASSWORD = 'BiblioUser2026!', CHECK_POLICY = OFF;
CREATE LOGIN login_lector WITH PASSWORD = 'LectorView2026!', CHECK_POLICY = OFF;
GO

USE BibliotecaInteligente;
GO

-- Creación de Usuarios en la base de datos
CREATE USER usr_admin_biblio FOR LOGIN login_admin_biblio;
CREATE USER usr_bibliotecario FOR LOGIN login_bibliotecario;
CREATE USER usr_lector FOR LOGIN login_lector;
GO

-- Creación de Roles de base de datos
CREATE ROLE rol_admin_biblioteca;
CREATE ROLE rol_bibliotecario;
CREATE ROLE rol_lector_consulta;
GO

-- Vinculación de Usuarios a cada Rol
ALTER ROLE rol_admin_biblioteca ADD MEMBER usr_admin_biblio;
ALTER ROLE rol_bibliotecario ADD MEMBER usr_bibliotecario;
ALTER ROLE rol_lector_consulta ADD MEMBER usr_lector;
GO

------
-- A) PERMISOS PARA ROL ADMINISTRADOR (rol_admin_biblioteca)
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO rol_admin_biblioteca;
-- Restricción explícita (DENY): Protege el historial financiero de multas
DENY DELETE ON dbo.multa TO rol_admin_biblioteca;
GO

-- B) PERMISOS PARA ROL BIBLIOTECARIO (rol_bibliotecario)
GRANT SELECT ON dbo.libro TO rol_bibliotecario;
GRANT SELECT ON dbo.categoria TO rol_bibliotecario;
GRANT SELECT, UPDATE ON dbo.ejemplar TO rol_bibliotecario;

GRANT SELECT, INSERT, UPDATE ON dbo.usuario TO rol_bibliotecario;
GRANT SELECT, INSERT, UPDATE ON dbo.membresia TO rol_bibliotecario;
GRANT SELECT, INSERT, UPDATE ON dbo.prestamo TO rol_bibliotecario;
GRANT SELECT, INSERT, UPDATE ON dbo.detalle_prestamo TO rol_bibliotecario;
GRANT SELECT, INSERT, UPDATE ON dbo.multa TO rol_bibliotecario;

-- Acceso a vistas operativas
GRANT SELECT ON dbo.vw_ReportePrestamosActivos TO rol_bibliotecario;
GRANT SELECT ON dbo.vw_DisponibilidadCategorias TO rol_bibliotecario;
GRANT SELECT ON dbo.vw_ControlMultasPendientes TO rol_bibliotecario;

-- Denegaciones explícitas (DENY)
DENY DELETE ON dbo.libro TO rol_bibliotecario;
DENY DELETE ON dbo.usuario TO rol_bibliotecario;
DENY DELETE ON dbo.prestamo TO rol_bibliotecario;
DENY DELETE ON dbo.multa TO rol_bibliotecario;
DENY SELECT, INSERT, UPDATE, DELETE ON dbo.personal TO rol_bibliotecario;
GO

-- C) PERMISOS PARA ROL LECTOR (rol_lector_consulta)
GRANT SELECT ON dbo.libro TO rol_lector_consulta;
GRANT SELECT ON dbo.categoria TO rol_lector_consulta;
GRANT SELECT ON dbo.ejemplar TO rol_lector_consulta;

-- Permiso otorgado sobre una VISTA
GRANT SELECT ON dbo.vw_DisponibilidadCategorias TO rol_lector_consulta;

-- Permiso a NIVEL DE COLUMNA (oculta correo y teléfono de usuarios)
GRANT SELECT ON dbo.usuario (nombre, apellidos, tipo_usuario) TO rol_lector_consulta;

-- Demostración de REVOKE
GRANT INSERT ON dbo.libro TO rol_lector_consulta;
REVOKE INSERT ON dbo.libro FROM rol_lector_consulta;

-- Denegación explícita (DENY) sobre tablas administrativas
DENY SELECT, INSERT, UPDATE, DELETE ON dbo.personal TO rol_lector_consulta;
DENY SELECT, INSERT, UPDATE, DELETE ON dbo.multa TO rol_lector_consulta;
DENY SELECT, INSERT, UPDATE, DELETE ON dbo.prestamo TO rol_lector_consulta;
GO

EXECUTE AS USER = 'usr_admin_biblio';
SELECT TOP 5 * FROM dbo.personal;
REVERT;
GO

EXECUTE AS USER = 'usr_admin_biblio';
DELETE FROM dbo.multa WHERE id_multa = 1;
REVERT;
GO

EXECUTE AS USER = 'usr_bibliotecario';
SELECT TOP 5 * FROM dbo.vw_ReportePrestamosActivos;
REVERT;
GO

EXECUTE AS USER = 'usr_bibliotecario';
SELECT * FROM dbo.personal;
REVERT;
GO

EXECUTE AS USER = 'usr_lector';
SELECT * FROM dbo.vw_DisponibilidadCategorias;
SELECT TOP 5 nombre, apellidos, tipo_usuario FROM dbo.usuario;
REVERT;
GO

EXECUTE AS USER = 'usr_lector';
SELECT correo FROM dbo.usuario; -- Denegado a nivel de columna
SELECT * FROM dbo.multa;       -- Denegado por rol
REVERT;
GO