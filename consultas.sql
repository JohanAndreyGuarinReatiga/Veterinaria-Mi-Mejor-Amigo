USE Veterinaria;

-- funciona o no 
-- SELECT * FROM Duenio;

CREATE TABLE MascotasVacunadas AS
SELECT * FROM Mascotas
WHERE vacunado = 1;

SELECT UPPER(nombreCompleto) AS nombreMayusculas
FROM Duenio;

SELECT CONCAT(nombre, ' - ', especie) AS descripcionMascota
FROM Mascotas;

SELECT nombre, raza, LENGTH(nombre) AS longitudNombre
FROM Mascotas;

SELECT LOWER(nombre) AS servicioMinusculas
FROM Servicio;

SELECT * FROM Servicio
ORDER BY precioBase DESC
LIMIT 5;

SELECT especie, COUNT(*) AS total
FROM Mascotas
GROUP BY especie;

SELECT d.nombreCompleto, COUNT(m.id) AS totalMascotas
FROM Duenio d
JOIN Mascotas m ON d.cedula = m.cedula
GROUP BY d.nombreCompleto;

SELECT v.fecha, m.nombre AS mascota, s.nombre AS servicio
FROM Visitas v
JOIN Mascotas m ON v.idMascota = m.id
JOIN Servicio s ON v.idServicio = s.id;

SELECT t.nombre AS tratamiento, t.observaciones, m.nombre AS mascota
FROM Tratamientos t
JOIN Visitas v ON t.idVisita = v.id
JOIN Mascotas m ON v.idMascota = m.id;

SELECT ROUND(totalPagado, 0) AS pagoRedondeado, metodoPago
FROM Pagos;

SELECT id, totalPagado, 
  IF(totalPagado > 25000, 'Alto', 'Bajo') AS categoriaPago
FROM Pagos;

SELECT d.nombreCompleto, m.totalMascotas
FROM (
  SELECT cedula, COUNT(*) AS totalMascotas
  FROM Mascotas
  GROUP BY cedula
  HAVING COUNT(*) > 1
) AS m
JOIN Duenio d ON d.cedula = m.cedula;

SELECT nombre FROM Mascotas
WHERE vacunado = 0;

SELECT v.fecha, t.nombre AS tratamiento
FROM Visitas v
JOIN Tratamientos t ON v.id = t.idVisita;

SELECT SUBSTRING(nombreCompleto, 1, LOCATE(' ', nombreCompleto)-1) AS primerNombre
FROM Duenio;

SELECT * FROM Visitas
ORDER BY fecha DESC;

SELECT metodoPago, SUM(totalPagado) AS totalRecaudado
FROM Pagos
GROUP BY metodoPago;

SELECT * FROM CitaPrevia
WHERE estado = 'Programada';
