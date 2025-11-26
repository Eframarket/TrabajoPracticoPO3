SELECT a.nombre, a.apellido, c.titulo
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas;  -

SELECT c.titulo, COUNT(a.id) AS total_empleados
FROM productos c
LEFT JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.id;- Adjust based on your schema

SELECT c.titulo
FROM productos c
LEFT JOIN empleados a ON a.id_gondola = c.codigo_gondolas
WHERE a.id IS NULL;

SELECT a.nombre, a.apellido, c.dia
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas;

SELECT c.titulo, a.edad
FROM productos c
JOIN empleados a ON a.id_gondola = c.codigo_gondolas;

SELECT a.nombre, a.apellido, c.turno
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
ORDER BY c.turno;

SELECT a.nombre, a.apellido, c.titulo
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
WHERE a.edad > 25;

SELECT c.marca AS profesor, a.nombre, a.apellido  -- Changed marca to represent the professor
FROM productos c
JOIN empleados a ON a.id_gondola = c.codigo_gondolas;

SELECT c.dia, COUNT(a.id) AS total_empleados
FROM productos c
LEFT JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.dia;

SELECT c.titulo, c.marca AS profesor
FROM productos c
ORDER BY c.marca;

SELECT a.nombre, a.apellido, c.titulo
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
WHERE c.turno = 'NOCHE';

SELECT c.titulo, COUNT(a.id) AS total_empleados
FROM productos c
LEFT JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.id
ORDER BY total_empleados DESC;

SELECT a.nombre, a.apellido
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
WHERE c.titulo = 'Frutas y Verduras';  

SELECT c.titulo, GROUP_CONCAT(a.nombre, ' ', a.apellido) AS empleados
FROM productos c
LEFT JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.id;

SELECT a.nombre, a.apellido, c.titulo
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas;

SELECT c.titulo, COUNT(a.id) AS total_empleados
FROM productos c
JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.titulo;

SELECT c.titulo, COUNT(a.id) AS total_empleados
FROM productos c
JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.id
HAVING total_empleados > 5;

SELECT a.nombre, a.apellido, c.titulo
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
WHERE c.turno = 'MAÑANA';

SELECT c.titulo, AVG(a.edad) AS edad_promedio
FROM productos c
JOIN empleados a ON a.id_gondola = c.codigo_gondolas
GROUP BY c.id;

SELECT a.nombre, a.apellido
FROM empleados a
JOIN productos c ON a.id_gondola = c.codigo_gondolas
WHERE c.titulo = 'Desarrollo de Software';  -- Update as per your product titles-- Adjust based on your existing product titles