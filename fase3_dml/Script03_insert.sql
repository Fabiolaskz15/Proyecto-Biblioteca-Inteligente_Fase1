USE BibliotecaInteligente;
GO

-- 1. CATÁLOGOS BASE (Roles y Categorías)
INSERT INTO rol (nombre_rol, descripcion) VALUES 
('Administrador', 'Control total del sistema y gestión de personal'),
('Bibliotecario', 'Atención en mostrador, préstamos y devoluciones'),
('Lector Frecuente', 'Usuario regular con privilegios extendidos'),
('Estudiante', 'Estudiante de la comunidad académica'),
('Externo', 'Visitante externo registrado temporalmente');
GO

INSERT INTO categoria (nombre_categoria, descripcion) VALUES 
('Base de Datos', 'Obras sobre diseño, SGBD y administración de datos'),
('Ingeniería de Software', 'Metodologías, patrones y arquitectura'),
('Redes y Comunicaciones', 'Protocolos, seguridad y redes UTP'),
('Matemáticas Aplicadas', 'Cálculo, ecuaciones diferenciales y métodos'),
('Literatura y Ensayo', 'Novelas, ficción y lectura general');
GO

-- 2. TABLA USUARIO 
INSERT INTO usuario (nombre, apellidos, correo, telefono, tipo_usuario, id_rol) VALUES 
('Vanessa', 'Fabiola Kats', 'vanessa.kats@tesj.edu.mx', '7221234567', 'Estudiante', 3),
('Uyanet', 'Hernández Pérez', 'uyanet.hernandez@tesj.edu.mx', '7229876543', 'Estudiante', 4),
('Misael', 'García López', 'misael.garcia@tesj.edu.mx', '7225554433', 'Estudiante', 4),
('Alma', 'Delia Ruiz', 'alma.delia@tesj.edu.mx', '7221112233', 'Docente', 3),
('Carlos', 'Pérez Gómez', 'carlos.perez@externo.com', '7226667788', 'Externo', 5),
('Sofía', 'Martínez Rivas', 'sofia.martinez@tesj.edu.mx', '7223334455', 'Estudiante', 4),
('Alejandro', 'Torres Mendoza', 'alejandro.torres@tesj.edu.mx', '7224445566', 'Docente', 3),
('Brenda', 'Jiménez Flores', 'brenda.jimenez@tesj.edu.mx', '7225556677', 'Estudiante', 4),
('Daniel', 'Ramírez Castro', 'daniel.ramirez@tesj.edu.mx', '7226667788', 'Estudiante', 4),
('Diana', 'Vargas Morales', 'diana.vargas@tesj.edu.mx', '7227778899', 'Externo', 5),
('Eduardo', 'Rojas Silva', 'eduardo.rojas@tesj.edu.mx', '7228889900', 'Estudiante', 4),
('Fernanda', 'Cruz Medina', 'fernanda.cruz@tesj.edu.mx', '7229990011', 'Estudiante', 4),
('Gabriel', 'Ortiz Soto', 'gabriel.ortiz@tesj.edu.mx', '7221010101', 'Docente', 3),
('Hannah', 'Navarro Luna', 'hannah.navarro@tesj.edu.mx', '7222020202', 'Estudiante', 4),
('Iván', 'Domínguez Rios', 'ivan.dominguez@tesj.edu.mx', '7223030303', 'Externo', 5),
('Jessica', 'Mendoza Pardo', 'jessica.mendoza@tesj.edu.mx', '7224040404', 'Estudiante', 4),
('Kevin', 'Soria Vega', 'kevin.soria@tesj.edu.mx', '7225050505', 'Estudiante', 4),
('Laura', 'Peralta Gil', 'laura.peralta@tesj.edu.mx', '7226060606', 'Docente', 3),
('Mario', 'Salas Meza', 'mario.salas@tesj.edu.mx', '7227070707', 'Estudiante', 4),
('Natalia', 'León Cárdenas', 'natalia.leon@tesj.edu.mx', '7228080808', 'Externo', 5),
('Oscar', 'Blanco Neira', 'oscar.blanco@tesj.edu.mx', '7229090909', 'Estudiante', 4),
('Paola', 'Rios Alanis', 'paola.rios@tesj.edu.mx', '7221122334', 'Estudiante', 4),
('Quintin', 'Sosa Bravo', 'quintin.sosa@tesj.edu.mx', '7222233445', 'Docente', 3),
('Rebeca', 'Nuñez Tellez', 'rebeca.nunez@tesj.edu.mx', '7223344556', 'Estudiante', 4),
('Samuel', 'Acosta Pineda', 'samuel.acosta@tesj.edu.mx', '7224455667', 'Externo', 5),
('Tatiana', 'Mora Campos', 'tatiana.mora@tesj.edu.mx', '7225566778', 'Estudiante', 4),
('Uriel', 'Pacheco Orozco', 'uriel.pacheco@tesj.edu.mx', '7226677889', 'Estudiante', 4),
('Valeria', 'Santos Duarte', 'valeria.santos@tesj.edu.mx', '7227788990', 'Docente', 3),
('Walter', 'Guerra Monroy', 'walter.guerra@tesj.edu.mx', '7228899001', 'Estudiante', 4),
('Ximena', 'Mejía Ponce', 'ximena.mejia@tesj.edu.mx', '7229900112', 'Externo', 5),
('Yair', 'Estrada Lara', 'yair.estrada@tesj.edu.mx', '7221133557', 'Estudiante', 4),
('Zoe', 'Cervantes Solís', 'zoe.cervantes@tesj.edu.mx', '7222244668', 'Estudiante', 4),
('Abel', 'Benítez Peña', 'abel.benitez@tesj.edu.mx', '7223355779', 'Docente', 3),
('Beatriz', 'Galindo Vaca', 'beatriz.galindo@tesj.edu.mx', '7224466880', 'Estudiante', 4),
('César', 'Ibarra Jaramillo', 'cesar.ibarra@tesj.edu.mx', '7225577991', 'Externo', 5),
('Daniela', 'Medina Casillas', 'daniela.medina@tesj.edu.mx', '7226688002', 'Estudiante', 4),
('Efraín', 'Neri Benítez', 'efrain.neri@tesj.edu.mx', '7227799113', 'Estudiante', 4),
('Fabiola', 'Quintero Leyva', 'fabiola.quintero@tesj.edu.mx', '7228800224', 'Docente', 3),
('Gerardo', 'Reynoso Tapia', 'gerardo.reynoso@tesj.edu.mx', '7229911335', 'Estudiante', 4),
('Helena', 'Salazar Uribe', 'helena.salazar@tesj.edu.mx', '7221021324', 'Externo', 5),
('Ismael', 'Téllez Valdés', 'ismael.tellez@tesj.edu.mx', '7222132435', 'Estudiante', 4),
('Jazmín', 'Uribe Zúñiga', 'jazmin.uribe@tesj.edu.mx', '7223243546', 'Estudiante', 4),
('Leonardo', 'Valdez Zurita', 'leonardo.valdez@tesj.edu.mx', '7224354657', 'Docente', 3),
('Mariana', 'Zarate Alanís', 'mariana.zarate@tesj.edu.mx', '7225465768', 'Estudiante', 4),
('Noé', 'Aguilar Baeza', 'noe.aguilar@tesj.edu.mx', '7226576879', 'Externo', 5),
('Ofelia', 'Burgos Cordero', 'ofelia.burgos@tesj.edu.mx', '7227687980', 'Estudiante', 4),
('Patricio', 'Delgado Esquivel', 'patricio.delgado@tesj.edu.mx', '7228798091', 'Estudiante', 4),
('Quetzal', 'Espinoza Fregoso', 'quetzal.espinoza@tesj.edu.mx', '7229809102', 'Docente', 3),
('Rosa', 'Fuentes Gamboa', 'rosa.fuentes@tesj.edu.mx', '7221902134', 'Estudiante', 4),
('Sergio', 'Godínez Hurtado', 'sergio.godinez@tesj.edu.mx', '7222913245', 'Externo', 5);
GO

-- 3. TABLA PERSONAL 
INSERT INTO personal (nombre, apellidos, turno, id_rol, correo_institucional) VALUES 
('Roberto', 'Gómez Bolaños', 'Matutino', 2, 'roberto.gomez@tesj.edu.mx'),
('María', 'Julieta Rivas', 'Vespertino', 2, 'maria.rivas@tesj.edu.mx'),
('Esteban', 'Quito Gomez', 'Matutino', 2, 'esteban.quito@tesj.edu.mx'),
('Carla', 'Morán Ruiz', 'Vespertino', 2, 'carla.moran@tesj.edu.mx'),
('Héctor', 'Juárez Patiño', 'Matutino', 2, 'hector.juarez@tesj.edu.mx'),
('Lucía', 'Méndez Cuesta', 'Vespertino', 2, 'lucia.mendez@tesj.edu.mx'),
('Raúl', 'Álvarez Nuñez', 'Matutino', 2, 'raul.alvarez@tesj.edu.mx'),
('Carmen', 'Solares Dávila', 'Vespertino', 2, 'carmen.solares@tesj.edu.mx'),
('Arturo', 'Beltrán Ceballos', 'Matutino', 2, 'arturo.beltran@tesj.edu.mx'),
('Patricia', 'Durán Macías', 'Vespertino', 2, 'patricia.duran@tesj.edu.mx'),
('Alfonso', 'Esparza Limón', 'Matutino', 2, 'alfonso.esparza@tesj.edu.mx'),
('Blanca', 'Flores Montero', 'Vespertino', 2, 'blanca.flores@tesj.edu.mx'),
('Claudio', 'Gallegos Neri', 'Matutino', 2, 'claudio.gallegos@tesj.edu.mx'),
('Dolores', 'Hurtado Ocampo', 'Vespertino', 2, 'dolores.hurtado@tesj.edu.mx'),
('Ernesto', 'Iglesias Pineda', 'Matutino', 2, 'ernesto.iglesias@tesj.edu.mx'),
('Francisca', 'Jasso Quezada', 'Vespertino', 2, 'francisca.jasso@tesj.edu.mx'),
('Gonzalo', 'Kuri Rangel', 'Matutino', 2, 'gonzalo.kuri@tesj.edu.mx'),
('Hortensia', 'Lara Saavedra', 'Vespertino', 2, 'hortensia.lara@tesj.edu.mx'),
('Ignacio', 'Macías Trejo', 'Matutino', 2, 'ignacio.macias@tesj.edu.mx'),
('Josefa', 'Nava Verduzco', 'Vespertino', 2, 'josefa.nava@tesj.edu.mx'),
('Federico', 'Lomelí Garza', 'Matutino', 2, 'federico.lomeli@tesj.edu.mx'),
('Guadalupe', 'Padilla Alanís', 'Vespertino', 2, 'guadalupe.padilla@tesj.edu.mx'),
('Mauricio', 'Quezada Soto', 'Matutino', 2, 'mauricio.quezada@tesj.edu.mx'),
('Silvia', 'Rangel Valdés', 'Vespertino', 2, 'silvia.rangel@tesj.edu.mx'),
('Vicente', 'Saavedra Meza', 'Matutino', 2, 'vicente.saavedra@tesj.edu.mx'),
('Yolanda', 'Trejo Téllez', 'Vespertino', 2, 'yolanda.trejo@tesj.edu.mx'),
('Adán', 'Verduzco Uribe', 'Matutino', 2, 'adan.verduzco@tesj.edu.mx'),
('Esperanza', 'Zurita Vargas', 'Vespertino', 2, 'esperanza.zurita@tesj.edu.mx'),
('Jacinto', 'Alanís Zaragoza', 'Matutino', 2, 'jacinto.alanis@tesj.edu.mx'),
('Margarita', 'Baeza Aguilar', 'Vespertino', 2, 'margarita.baeza@tesj.edu.mx'),
('Damián', 'Cordero Burgos', 'Matutino', 2, 'damian.cordero@tesj.edu.mx'),
('Inés', 'Esquivel Delgado', 'Vespertino', 2, 'ines.esquivel@tesj.edu.mx'),
('Marcos', 'Fregoso Espinoza', 'Matutino', 2, 'marcos.fregoso@tesj.edu.mx'),
('Renata', 'Gamboa Fuentes', 'Vespertino', 2, 'renata.gamboa@tesj.edu.mx'),
('Trinidad', 'Hurtado Godínez', 'Matutino', 2, 'trinidad.hurtado@tesj.edu.mx'),
('Adelina', 'Jaramillo Ibarra', 'Vespertino', 2, 'adelina.jaramillo@tesj.edu.mx'),
('Bernardo', 'Casillas Medina', 'Matutino', 2, 'bernardo.casillas@tesj.edu.mx'),
('Clara', 'Benítez Neri', 'Vespertino', 2, 'clara.benitez@tesj.edu.mx'),
('Dionisio', 'Leyva Quintero', 'Matutino', 2, 'dionisio.leyva@tesj.edu.mx'),
('Eulalia', 'Tapia Reynoso', 'Vespertino', 2, 'eulalia.tapia@tesj.edu.mx'),
('Fructuoso', 'Uribe Salazar', 'Matutino', 2, 'fructuoso.uribe@tesj.edu.mx'),
('Glafira', 'Valdés Téllez', 'Vespertino', 2, 'glafira.valdes@tesj.edu.mx'),
('Hermenegildo', 'Zúñiga Uribe', 'Matutino', 2, 'hermenegildo.zuniga@tesj.edu.mx'),
('Irma', 'Zurita Valdez', 'Vespertino', 2, 'irma.zurita@tesj.edu.mx'),
('Juvenal', 'Alanís Zárate', 'Matutino', 2, 'juvenal.alanis@tesj.edu.mx'),
('Modesta', 'Baeza Aguilar', 'Vespertino', 2, 'modesta.baeza@tesj.edu.mx'),
('Nemesio', 'Cordero Burgos', 'Matutino', 2, 'nemesio.cordero@tesj.edu.mx'),
('Priscila', 'Esquivel Delgado', 'Vespertino', 2, 'priscila.esquivel@tesj.edu.mx'),
('Severo', 'Fregoso Espinoza', 'Matutino', 2, 'severo.fregoso@tesj.edu.mx'),
('Teodora', 'Gamboa Fuentes', 'Vespertino', 2, 'teodora.gamboa@tesj.edu.mx');
GO

-- 4. TABLA LIBRO 
INSERT INTO libro (titulo, autor, editorial, anio_publicacion, id_categoria) VALUES 
('Sistemas de Bases de Datos', 'Elmasri / Navathe', 'Pearson', 2016, 1),
('Redes de Computadoras', 'Tanenbaum', 'Pearson', 2021, 3),
('Ecuaciones Diferenciales', 'Zill', 'Cengage Learning', 2018, 4),
('Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 2),
('Fundamentos de Bases de Datos', 'Silberschatz', 'McGraw-Hill', 2019, 1),
('Ingeniería de Software', 'Pressman', 'McGraw-Hill', 2020, 2),
('Comunicaciones y Redes', 'Stallings', 'Pearson', 2017, 3),
('Cálculo de una Variable', 'Stewart', 'Cengage Learning', 2015, 4),
('Cien Años de Soledad', 'Gabriel García Márquez', 'Diana', 1967, 5),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Alfaguara', 1605, 5),
('Introducción a la Algoritmia', 'Cormen', 'MIT Press', 2009, 2),
('Seguridad en Redes', 'Stallings', 'Pearson', 2018, 3),
('Métodos Numéricos con Python', 'Nieves', 'Grupo Editorial Patria', 2021, 4),
('El Arte de la Guerra', 'Sun Tzu', 'Éxito', 2015, 5),
('Administración de SQL Server', 'Kats', 'TechPress', 2023, 1),
('Patrones de Diseño', 'Gamma', 'Addison-Wesley', 1994, 2),
('Arquitectura de Computadoras', 'Stallings', 'Pearson', 2019, 3),
('Álgebra Lineal', 'Lay', 'Pearson', 2016, 4),
('Pedro Páramo', 'Juan Rulfo', 'FCE', 1955, 5),
('SQL Avanzado y Rendimiento', 'Beaulieu', 'O Reilly', 2020, 1),
('Refactoring', 'Martin Fowler', 'Addison-Wesley', 2018, 2),
('Redes Cisco CCNA', 'Odom', 'Pearson', 2020, 3),
('Estadística Aplicada', 'Montgomery', 'Limusa', 2017, 4),
('La Metamorfosis', 'Franz Kafka', 'Éxito', 1915, 5),
('Diseño de Bases de Datos Relacionales', 'Connolly', 'Pearson', 2015, 1),
('UML Gota a Gota', 'Martin Fowler', 'Pearson', 2018, 2),
('Protocolos TCP/IP', 'Forouzan', 'McGraw-Hill', 2017, 3),
('Matemáticas Discretas', 'Rosen', 'McGraw-Hill', 2019, 4),
('El Principito', 'Antoine de Saint-Exupéry', 'Salamandra', 1943, 5),
('Minería de Datos', 'Han', 'Morgan Kaufmann', 2011, 1),
('Desarrollo Ágil con Scrum', 'Schwaber', 'Microsoft Press', 2004, 2),
('Fibra Óptica y Medios', 'Keiser', 'McGraw-Hill', 2016, 3),
('Matemáticas para Ingeniería', 'Kreyzig', 'Limusa', 2020, 4),
('Crimen y Castigo', 'Fiódor Dostoyevski', 'Porrúa', 1866, 5),
('Auditoría de Bases de Datos', 'Fernández', 'Alfaomega', 2022, 1),
('Pruebas de Software', 'Jorgensen', 'Wiley', 2013, 2),
('Redes Inalámbricas', 'Pahlavan', 'Wiley', 2005, 3),
('Cálculo Vectorial', 'Marsden', 'Pearson', 2018, 4),
('La Odisea', 'Homero', 'Porrúa', 2000, 5),
('Bases de Datos NoSQL', 'Redmond', 'O Reilly', 2012, 1),
('DevOps Práctico', 'Humble', 'Addison-Wesley', 2016, 2),
('Conmutación y Enrutamiento', 'Cisco Press', 'Pearson', 2019, 3),
('Ecuaciones en Derivadas Parciales', 'Espinoza', 'Reverté', 2017, 4),
('La Sombra del Viento', 'Carlos Ruiz Zafón', 'Planeta', 2001, 5),
('Seguridad Ofensiva en BD', 'Mitnick', 'Anaya', 2021, 1),
('Domain-Driven Design', 'Eric Evans', 'Addison-Wesley', 2003, 2),
('Seguridad en Redes Wi-Fi', 'Gast', 'O Reilly', 2014, 3),
('Física Universitaria', 'Sears Zemansky', 'Pearson', 2020, 4),
('Fahrenheit 451', 'Ray Bradbury', 'Debolsillo', 1953, 5),
('Big Data y Analítica', 'Minelli', 'Wiley', 2015, 1);
GO


-- 5. TABLA EJEMPLAR 
INSERT INTO ejemplar (id_libro, codigo_barras, estado_fisico) VALUES 
(1, 'BARC-00001', 'Disponible'), (2, 'BARC-00002', 'Disponible'), (3, 'BARC-00003', 'Prestado'),
(4, 'BARC-00004', 'Disponible'), (5, 'BARC-00005', 'Disponible'), (6, 'BARC-00006', 'Dañado'),
(7, 'BARC-00007', 'Disponible'), (8, 'BARC-00008', 'Disponible'), (9, 'BARC-00009', 'Prestado'),
(10, 'BARC-00010', 'Disponible'), (11, 'BARC-00011', 'Disponible'), (12, 'BARC-00012', 'Disponible'),
(13, 'BARC-00013', 'Disponible'), (14, 'BARC-00014', 'Prestado'), (15, 'BARC-00015', 'Disponible'),
(16, 'BARC-00016', 'Disponible'), (17, 'BARC-00017', 'Disponible'), (18, 'BARC-00018', 'Disponible'),
(19, 'BARC-00019', 'Prestado'), (20, 'BARC-00020', 'Disponible'), (21, 'BARC-00021', 'Disponible'),
(22, 'BARC-00022', 'Disponible'), (23, 'BARC-00023', 'Dañado'), (24, 'BARC-00024', 'Disponible'),
(25, 'BARC-00025', 'Disponible'), (26, 'BARC-00026', 'Disponible'), (27, 'BARC-00027', 'Prestado'),
(28, 'BARC-00028', 'Disponible'), (29, 'BARC-00029', 'Disponible'), (30, 'BARC-00030', 'Disponible'),
(31, 'BARC-00031', 'Disponible'), (32, 'BARC-00032', 'Disponible'), (33, 'BARC-00033', 'Disponible'),
(34, 'BARC-00034', 'Prestado'), (35, 'BARC-00035', 'Disponible'), (36, 'BARC-00036', 'Disponible'),
(37, 'BARC-00037', 'Disponible'), (38, 'BARC-00038', 'Disponible'), (39, 'BARC-00039', 'Dañado'),
(40, 'BARC-00040', 'Disponible'), (41, 'BARC-00041', 'Disponible'), (42, 'BARC-00042', 'Disponible'),
(43, 'BARC-00043', 'Prestado'), (44, 'BARC-00044', 'Disponible'), (45, 'BARC-00045', 'Disponible'),
(46, 'BARC-00046', 'Disponible'), (47, 'BARC-00047', 'Disponible'), (48, 'BARC-00048', 'Disponible'),
(49, 'BARC-00049', 'Prestado'), (50, 'BARC-00050', 'Disponible');
GO


-- 6. TABLA MEMBRESIA 
INSERT INTO membresia (id_usuario, fecha_inicio, fecha_fin, estado) VALUES 
(1, '2026-01-10', '2027-01-10', 'Activa'), (2, '2026-01-12', '2027-01-12', 'Activa'),
(3, '2026-01-15', '2027-01-15', 'Activa'), (4, '2026-02-01', '2027-02-01', 'Activa'),
(5, '2026-02-05', '2027-02-05', 'Activa'), (6, '2026-02-10', '2027-02-10', 'Activa'),
(7, '2026-02-15', '2027-02-15', 'Activa'), (8, '2026-02-20', '2027-02-20', 'Activa'),
(9, '2026-03-01', '2027-03-01', 'Activa'), (10, '2026-03-05', '2027-03-05', 'Activa'),
(11, '2026-03-10', '2027-03-10', 'Activa'), (12, '2026-03-12', '2027-03-12', 'Activa'),
(13, '2026-03-15', '2027-03-15', 'Activa'), (14, '2026-03-18', '2027-03-18', 'Activa'),
(15, '2026-03-20', '2027-03-20', 'Activa'), (16, '2026-03-22', '2027-03-22', 'Activa'),
(17, '2026-03-25', '2027-03-25', 'Activa'), (18, '2026-03-28', '2027-03-28', 'Activa'),
(19, '2026-04-01', '2027-04-01', 'Activa'), (20, '2026-04-03', '2027-04-03', 'Activa'),
(21, '2026-04-05', '2027-04-05', 'Activa'), (22, '2026-04-08', '2027-04-08', 'Activa'),
(23, '2026-04-10', '2027-04-10', 'Activa'), (24, '2026-04-12', '2027-04-12', 'Activa'),
(25, '2026-04-15', '2027-04-15', 'Activa'), (26, '2026-04-18', '2027-04-18', 'Activa'),
(27, '2026-04-20', '2027-04-20', 'Activa'), (28, '2026-04-22', '2027-04-22', 'Activa'),
(29, '2026-04-25', '2027-04-25', 'Activa'), (30, '2026-04-28', '2027-04-28', 'Activa'),
(31, '2026-05-01', '2027-05-01', 'Activa'), (32, '2026-05-03', '2027-05-03', 'Activa'),
(33, '2026-05-05', '2027-05-05', 'Activa'), (34, '2026-05-08', '2027-05-08', 'Activa'),
(35, '2026-05-10', '2027-05-10', 'Activa'), (36, '2026-05-12', '2027-05-12', 'Activa'),
(37, '2026-05-15', '2027-05-15', 'Activa'), (38, '2026-05-18', '2027-05-18', 'Activa'),
(39, '2026-05-20', '2027-05-20', 'Activa'), (40, '2026-05-22', '2027-05-22', 'Activa'),
(41, '2026-05-25', '2027-05-25', 'Activa'), (42, '2026-05-28', '2027-05-28', 'Activa'),
(43, '2026-06-01', '2027-06-01', 'Activa'), (44, '2026-06-03', '2027-06-03', 'Activa'),
(45, '2026-06-05', '2027-06-05', 'Activa'), (46, '2026-06-08', '2027-06-08', 'Activa'),
(47, '2026-06-10', '2027-06-10', 'Activa'), (48, '2026-06-12', '2027-06-12', 'Activa'),
(49, '2026-06-15', '2027-06-15', 'Activa'), (50, '2026-06-18', '2027-06-18', 'Activa');
GO


-- 7. TABLA PRESTAMO 
INSERT INTO prestamo (id_usuario, id_personal, fecha_prestamo, fecha_devolucion_esperada, estado_prestamo) VALUES 
(1, 1, '2026-09-01', '2026-09-08', 'Concluido'), (2, 2, '2026-09-02', '2026-09-09', 'Concluido'),
(3, 1, '2026-09-03', '2026-09-10', 'Concluido'), (4, 3, '2026-09-04', '2026-09-11', 'Concluido'),
(5, 4, '2026-09-05', '2026-09-12', 'Concluido'), (6, 1, '2026-09-06', '2026-09-13', 'Concluido'),
(7, 2, '2026-09-07', '2026-09-14', 'Concluido'), (8, 5, '2026-09-08', '2026-09-15', 'Concluido'),
(9, 3, '2026-09-09', '2026-09-16', 'Concluido'), (10, 4, '2026-09-10', '2026-09-17', 'Concluido'),
(11, 1, '2026-09-11', '2026-09-18', 'Concluido'), (12, 2, '2026-09-12', '2026-09-19', 'Concluido'),
(13, 6, '2026-09-13', '2026-09-20', 'Concluido'), (14, 1, '2026-09-14', '2026-09-21', 'Concluido'),
(15, 2, '2026-09-15', '2026-09-22', 'Concluido'), (16, 3, '2026-09-16', '2026-09-23', 'Concluido'),
(17, 4, '2026-09-17', '2026-09-24', 'Concluido'), (18, 5, '2026-09-18', '2026-09-25', 'Concluido'),
(19, 1, '2026-09-19', '2026-09-26', 'Concluido'), (20, 2, '2026-09-20', '2026-09-27', 'Concluido'),
(21, 3, '2026-09-21', '2026-09-28', 'Concluido'), (22, 4, '2026-09-22', '2026-09-29', 'Concluido'),
(23, 1, '2026-09-23', '2026-09-30', 'Concluido'), (24, 2, '2026-09-24', '2026-10-01', 'Concluido'),
(25, 5, '2026-09-25', '2026-10-02', 'Concluido'), (26, 6, '2026-09-26', '2026-10-03', 'Concluido'),
(27, 1, '2026-09-27', '2026-10-04', 'Concluido'), (28, 2, '2026-09-28', '2026-10-05', 'Concluido'),
(29, 3, '2026-09-29', '2026-10-06', 'Concluido'), (30, 4, '2026-09-30', '2026-10-07', 'Concluido'),
(31, 1, '2026-10-01', '2026-10-08', 'Activo'),     (32, 2, '2026-10-02', '2026-10-09', 'Activo'),
(33, 3, '2026-10-03', '2026-10-10', 'Activo'),     (34, 4, '2026-10-04', '2026-10-11', 'Activo'),
(35, 5, '2026-10-05', '2026-10-12', 'Activo'),     (36, 1, '2026-10-06', '2026-10-13', 'Activo'),
(37, 2, '2026-10-07', '2026-10-14', 'Activo'),     (38, 3, '2026-10-08', '2026-10-15', 'Activo'),
(39, 4, '2026-10-09', '2026-10-16', 'Activo'),     (40, 5, '2026-10-10', '2026-10-17', 'Activo'),
(41, 1, '2026-10-11', '2026-10-18', 'Activo'),     (42, 2, '2026-10-12', '2026-10-19', 'Activo'),
(43, 3, '2026-10-13', '2026-10-20', 'Activo'),     (44, 4, '2026-10-14', '2026-10-21', 'Activo'),
(45, 5, '2026-10-15', '2026-10-22', 'Activo'),     (46, 1, '2026-10-16', '2026-10-23', 'Activo'),
(47, 2, '2026-10-17', '2026-10-24', 'Activo'),     (48, 3, '2026-10-18', '2026-10-25', 'Activo'),
(49, 4, '2026-10-19', '2026-10-26', 'Activo'),     (50, 5, '2026-10-20', '2026-10-27', 'Activo');
GO


-- 8. TABLA DETALLE_PRESTAMO 
INSERT INTO detalle_prestamo (id_prestamo, id_ejemplar, devolucion_real) VALUES 
(1, 1, '2026-09-07'), (2, 2, '2026-09-08'), (3, 3, NULL),
(4, 4, '2026-09-10'), (5, 5, '2026-09-11'), (6, 6, NULL),
(7, 7, '2026-09-13'), (8, 8, '2026-09-14'), (9, 9, NULL),
(10, 10, '2026-09-16'), (11, 11, '2026-09-17'), (12, 12, '2026-09-18'),
(13, 13, '2026-09-19'), (14, 14, NULL), (15, 15, '2026-09-21'),
(16, 16, '2026-09-22'), (17, 17, '2026-09-23'), (18, 18, '2026-09-24'),
(19, 19, NULL), (20, 20, '2026-09-26'), (21, 21, '2026-09-27'),
(22, 22, '2026-09-28'), (23, 23, NULL), (24, 24, '2026-09-30'),
(25, 25, '2026-10-01'), (26, 26, '2026-10-02'), (27, 27, NULL),
(28, 28, '2026-10-04'), (29, 29, '2026-10-05'), (30, 30, '2026-10-06'),
(31, 31, NULL), (32, 32, NULL), (33, 33, NULL),
(34, 34, NULL), (35, 35, NULL), (36, 36, NULL),
(37, 37, NULL), (38, 38, NULL), (39, 39, NULL),
(40, 40, NULL), (41, 41, NULL), (42, 42, NULL),
(43, 43, NULL), (44, 44, NULL), (45, 45, NULL),
(46, 46, NULL), (47, 47, NULL), (48, 48, NULL),
(49, 49, NULL), (50, 50, NULL);
GO


-- 9. TABLA MULTA 
INSERT INTO multa (id_prestamo, monto, dias_retraso, estatus_pago, observaciones) VALUES 
(1, 50.00, 2, 'Pagado', 'Retraso menor en entrega de libro.'),
(2, 0.00, 0, 'Pagado', 'Sin retraso.'),
(3, 120.00, 5, 'Pendiente', 'Retraso moderado.'),
(4, 0.00, 0, 'Pagado', 'Entregado a tiempo.'),
(5, 25.00, 1, 'Pagado', '1 día de retraso.'),
(6, 0.00, 0, 'Pagado', 'Sin observaciones.'),
(7, 75.00, 3, 'Pendiente', 'Retraso de 3 días.'),
(8, 0.00, 0, 'Pagado', 'Correcto.'),
(9, 150.00, 6, 'Pendiente', 'Retraso considerable.'),
(10, 0.00, 0, 'Pagado', 'Entregado en fecha.'),
(11, 0.00, 0, 'Pagado', 'En orden.'),
(12, 50.00, 2, 'Pendiente', 'Multa pendiente de pago.'),
(13, 0.00, 0, 'Pagado', 'Sin adeudo.'),
(14, 200.00, 8, 'Pendiente', 'Retraso elevado.'),
(15, 0.00, 0, 'Pagado', 'Entregado a tiempo.'),
(16, 0.00, 0, 'Pagado', 'OK.'),
(17, 30.00, 1, 'Pagado', 'Un día tarde.'),
(18, 0.00, 0, 'Pagado', 'Sin novedad.'),
(19, 90.00, 4, 'Pendiente', 'Pendiente de liquidación.'),
(20, 0.00, 0, 'Pagado', 'A tiempo.'),
(21, 0.00, 0, 'Pagado', 'Correcto.'),
(22, 60.00, 2, 'Pagado', 'Multa liquidada.'),
(23, 110.00, 4, 'Pendiente', 'Retraso de 4 días.'),
(24, 0.00, 0, 'Pagado', 'Sin retraso.'),
(25, 0.00, 0, 'Pagado', 'Entregado bien.'),
(26, 40.00, 1, 'Pendiente', 'Multa pendiente.'),
(27, 0.00, 0, 'Pagado', 'A tiempo.'),
(28, 80.00, 3, 'Pagado', 'Liquidado.'),
(29, 0.00, 0, 'Pagado', 'Sin novedad.'),
(30, 130.00, 5, 'Pendiente', 'Retraso de 5 días.'),
(31, 0.00, 0, 'Pagado', 'Préstamo activo reciente.'),
(32, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(33, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(34, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(35, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(36, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(37, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(38, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(39, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(40, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(41, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(42, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(43, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(44, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(45, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(46, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(47, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(48, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(49, 0.00, 0, 'Pagado', 'Préstamo activo.'),
(50, 0.00, 0, 'Pagado', 'Préstamo activo.');
GO



-- Actualizar el número telefónico de un usuario específico
UPDATE usuario 
SET telefono = '7229998877' 
WHERE id_usuario = 1;

-- Eliminar un registro de multa que no restringe a ninguna otra entidad
DELETE FROM multa 
WHERE id_multa = 50;

-- Intentar eliminar una categoría que actualmente tiene libros asociados
DELETE FROM categoria 
WHERE id_categoria = 1;

SELECT nombre, apellidos, correo, tipo_usuario 
FROM usuario 
ORDER BY apellidos ASC;

SELECT titulo, autor, editorial, anio_publicacion 
FROM libro 
WHERE anio_publicacion >= 2020 
ORDER BY anio_publicacion DESC;

SELECT nombre, apellidos, correo_institucional, turno 
FROM personal 
WHERE turno = 'Matutino';

SELECT id_ejemplar, id_libro, codigo_barras, estado_fisico 
FROM ejemplar 
WHERE estado_fisico = 'Disponible';

SELECT id_multa, id_prestamo, monto, dias_retraso, observaciones 
FROM multa 
WHERE estatus_pago = 'Pendiente' 
ORDER BY monto DESC;

SELECT id_membresia, id_usuario, fecha_inicio, fecha_fin, estado 
FROM membresia 
WHERE estado = 'Activa';

SELECT CONCAT(UPPER(nombre), ' ', UPPER(apellidos)) AS NombreCompleto, correo 
FROM usuario;

SELECT id_prestamo, 'MXN ' + CAST(monto AS VARCHAR(15)) AS MontoFormateado, dias_retraso 
FROM multa;

SELECT id_prestamo, fecha_prestamo, fecha_devolucion_esperada, 
       DATEDIFF(day, fecha_prestamo, fecha_devolucion_esperada) AS DiasPlazo 
FROM prestamo;

SELECT id_membresia, id_usuario, fecha_fin, 
       DATEDIFF(day, GETDATE(), fecha_fin) AS DiasRestantesVencimiento 
FROM membresia 
WHERE estado = 'Activa';

SELECT titulo, anio_publicacion,
       CASE 
           WHEN anio_publicacion >= 2020 THEN 'Edición Reciente'
           WHEN anio_publicacion BETWEEN 2000 AND 2019 THEN 'Edición Moderna'
           ELSE 'Edición Clásica / Histórica'
       END AS ClasificacionAntiguedad
FROM libro;

SELECT correo, SUBSTRING(correo, 1, CHARINDEX('@', correo) - 1) AS UsuarioCorreo 
FROM usuario;

SELECT id_categoria, COUNT(*) AS TotalLibros 
FROM libro 
GROUP BY id_categoria;

SELECT SUM(monto) AS TotalRecaudado 
FROM multa 
WHERE estatus_pago = 'Pagado';

SELECT AVG(CAST(dias_retraso AS FLOAT)) AS PromedioDiasRetraso 
FROM multa;

SELECT tipo_usuario, COUNT(*) AS TotalUsuarios 
FROM usuario 
GROUP BY tipo_usuario;

SELECT id_categoria, COUNT(*) AS CantidadLibros 
FROM libro 
GROUP BY id_categoria 
HAVING COUNT(*) > 10;

SELECT estado_prestamo, COUNT(*) AS TotalPrestamos 
FROM prestamo 
GROUP BY estado_prestamo;

SELECT l.titulo, l.autor, c.nombre_categoria 
FROM libro l
INNER JOIN categoria c ON l.id_categoria = c.id_categoria;

SELECT p.id_prestamo, p.fecha_prestamo, 
       CONCAT(u.nombre, ' ', u.apellidos) AS Usuario, 
       CONCAT(per.nombre, ' ', per.apellidos) AS AtendioPersonal
FROM prestamo p
INNER JOIN usuario u ON p.id_usuario = u.id_usuario
INNER JOIN personal per ON p.id_personal = per.id_personal;

SELECT e.codigo_barras, e.estado_fisico, l.titulo, l.editorial 
FROM ejemplar e
INNER JOIN libro l ON e.id_libro = l.id_libro;

SELECT m.id_multa, m.monto, m.estatus_pago, u.correo 
FROM multa m
INNER JOIN prestamo p ON m.id_prestamo = p.id_prestamo
INNER JOIN usuario u ON p.id_usuario = u.id_usuario;

SELECT u.nombre, u.apellidos, m.estado AS EstadoMembresia, m.fecha_fin 
FROM usuario u
LEFT JOIN membresia m ON u.id_usuario = m.id_usuario;

SELECT dp.id_detalle, dp.id_prestamo, e.codigo_barras, dp.devolucion_real 
FROM detalle_prestamo dp
INNER JOIN ejemplar e ON dp.id_ejemplar = e.id_ejemplar;

SELECT titulo, anio_publicacion 
FROM libro 
WHERE id_libro > (SELECT AVG(CAST(id_libro AS FLOAT)) FROM libro);

SELECT nombre, apellidos, correo 
FROM usuario 
WHERE id_usuario IN (
    SELECT p.id_usuario 
    FROM prestamo p 
    INNER JOIN multa m ON p.id_prestamo = m.id_prestamo 
    WHERE m.estatus_pago = 'Pendiente'
);

SELECT correo AS CorreoDirectorio FROM usuario
UNION
SELECT correo_institucional AS CorreoDirectorio FROM personal;

SELECT id_multa, id_prestamo, monto 
FROM multa 
WHERE monto > (SELECT AVG(monto) FROM multa);

SELECT u.nombre, u.apellidos, u.correo 
FROM usuario u 
WHERE EXISTS (
    SELECT 1 
    FROM prestamo p 
    WHERE p.id_usuario = u.id_usuario AND p.estado_prestamo = 'Activo'
);

SELECT c.nombre_categoria, COUNT(e.id_ejemplar) AS TotalEjemplaresFisicos
FROM categoria c
INNER JOIN libro l ON c.id_categoria = l.id_categoria
INNER JOIN ejemplar e ON l.id_libro = e.id_libro
GROUP BY c.nombre_categoria;

SELECT id_prestamo, CONVERT(VARCHAR(10), fecha_prestamo, 103) AS FechaPrestamoFormateada 
FROM prestamo;

SELECT l.titulo, c.nombre_categoria 
FROM libro l
RIGHT JOIN categoria c ON l.id_categoria = c.id_categoria;

SELECT u.id_usuario, u.nombre, m.id_membresia, m.estado 
FROM usuario u
FULL JOIN membresia m ON u.id_usuario = m.id_usuario;

SELECT id_usuario FROM usuario
INTERSECT
SELECT id_usuario FROM membresia WHERE estado = 'Activa';

SELECT id_usuario FROM usuario
EXCEPT
SELECT id_usuario FROM prestamo;

CREATE VIEW vw_ReportePrestamosActivos AS
SELECT 
    p.id_prestamo,
    CONCAT(u.nombre, ' ', u.apellidos) AS NombreUsuario,
    u.correo AS CorreoUsuario,
    p.fecha_prestamo,
    p.fecha_devolucion_esperada,
    p.estado_prestamo,
    CONCAT(per.nombre, ' ', per.apellidos) AS AtendioPersonal
FROM prestamo p
INNER JOIN usuario u ON p.id_usuario = u.id_usuario
INNER JOIN personal per ON p.id_personal = per.id_personal
WHERE p.estado_prestamo = 'Activo';
GO

SELECT * FROM vw_ReportePrestamosActivos;

CREATE VIEW vw_DisponibilidadCategorias AS
SELECT 
    c.nombre_categoria,
    COUNT(e.id_ejemplar) AS TotalEjemplaresFisicos,
    SUM(CASE WHEN e.estado_fisico = 'Disponible' THEN 1 ELSE 0 END) AS EjemplaresDisponibles,
    SUM(CASE WHEN e.estado_fisico = 'Prestado' THEN 1 ELSE 0 END) AS EjemplaresPrestados,
    SUM(CASE WHEN e.estado_fisico = 'Dañado' THEN 1 ELSE 0 END) AS EjemplaresDañados
FROM categoria c
INNER JOIN libro l ON c.id_categoria = l.id_categoria
INNER JOIN ejemplar e ON l.id_libro = e.id_libro
GROUP BY c.nombre_categoria;

CREATE VIEW vw_ControlMultasPendientes AS
SELECT 
    m.id_multa,
    CONCAT(u.nombre, ' ', u.apellidos) AS UsuarioDeudor,
    u.telefono,
    m.monto,
    m.dias_retraso,
    m.estatus_pago,
    m.observaciones
FROM multa m
INNER JOIN prestamo p ON m.id_prestamo = p.id_prestamo
INNER JOIN usuario u ON p.id_usuario = u.id_usuario;
GO

SELECT * FROM vw_ControlMultasPendientes;