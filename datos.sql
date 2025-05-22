USE Veterinaria;

INSERT INTO Duenio (cedula, nombreCompleto, telefono, direccion) VALUES
(1012345678, 'Laura Rodríguez', '3124567890', 'Calle 10 #23-45'),
(1023456789, 'Carlos Pérez', '3001234567', 'Carrera 7 #12-34'),
(1034567890, 'María Gómez', '3012345678', 'Calle 15 #45-67'),
(1045678901, 'Andrés Martínez', '3109876543', 'Transversal 8 #14-25'),
(1056789012, 'Sandra Torres', '3208765432', 'Diagonal 9 #20-10');

INSERT INTO Mascotas (nombre, especie, raza, fechaNacimiento, sexo, vacunado, cedula) VALUES
('Luna', 'Perro', 'Labrador', '2020-05-10', 'Hembra', 1, 1012345678),
('Max', 'Perro', 'Golden Retriever', '2019-08-15', 'Macho', 1, 1012345678),
('Misu', 'Gato', 'Siames', '2021-03-22', 'Hembra', 0, 1023456789),
('Rocky', 'Perro', 'Bulldog', '2018-11-30', 'Macho', 1, 1034567890),
('Nina', 'Gato', 'Angora', '2022-06-12', 'Hembra', 1, 1045678901),
('Toby', 'Perro', 'Beagle', '2017-09-08', 'Macho', 1, 1045678901),
('Milo', 'Perro', 'Pug', '2020-01-05', 'Macho', 0, 1056789012),
('Simba', 'Gato', 'Persa', '2021-10-18', 'Macho', 1, 1056789012),
('Kiara', 'Perro', 'Pastor Alemán', '2019-12-25', 'Hembra', 1, 1034567890),
('Coco', 'Gato', 'Maine Coon', '2020-07-14', 'Macho', 0, 1023456789);

INSERT INTO Servicio (nombre, descripcion, precioBase) VALUES
('Baño', 'Baño completo', 25000),
('Corte de uñas', 'Corte y limado', 15000),
('Consulta médica', 'Revisión general', 40000),
('Vacunación', 'Aplicación de vacuna', 30000),
('Desparasitación', 'Tratamiento antiparasitario', 20000);

INSERT INTO CitaPrevia (fechaHora, motivo, estado, idMascota, idServicio) VALUES
('2025-05-22 10:00:00', 'Baño mensual', 'Programada', 1, 1),
('2025-05-22 11:30:00', 'Revisión general', 'Confirmada', 3, 3),
('2025-05-23 09:00:00', 'Vacuna anual', 'Programada', 5, 4),
('2025-05-23 14:00:00', 'Desparasitación', 'Cancelada', 8, 5),
('2025-05-24 08:30:00', 'Corte de uñas', 'Confirmada', 4, 2);

INSERT INTO Visitas (fecha, idMascota, idServicio) VALUES
('2025-05-01', 1, 1),
('2025-05-01', 2, 2),
('2025-05-02', 3, 3),
('2025-05-03', 4, 5),
('2025-05-04', 5, 4),
('2025-05-05', 6, 1),
('2025-05-06', 7, 3),
('2025-05-07', 8, 4),
('2025-05-08', 9, 2),
('2025-05-09', 10, 5);

INSERT INTO Tratamientos (nombre, observaciones, idVisita) VALUES
('Antibióticos', 'Infección leve tratada', 3),
('Antiparasitario', 'Garrapatas encontradas', 4),
('Vitaminas', 'Refuerzo nutricional', 7),
('Vacuna Rabia', 'Aplicada sin reacción', 5),
('Tratamiento dental', 'Limpieza y revisión', 2);

INSERT INTO Pagos (fechaPago, totalPagado, metodoPago, idVisita) VALUES
('2025-05-01', 25000, 'Efectivo', 1),
('2025-05-01', 15000, 'Tarjeta', 2),
('2025-05-02', 40000, 'Nequi', 3),
('2025-05-03', 20000, 'Efectivo', 4),
('2025-05-04', 30000, 'Tarjeta', 5);
