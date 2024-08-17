-- 1. Mostrar los nombres de los empleados ordenados alfabéticamente (Z...A)

SELECT NOMBRES 
FROM EMPLEADOS
ORDER BY NOMBRES DESC;

-- 2. Seleccionar el nombre, el puesto y la localidad donde trabajan los empleados con puesto de ‘Soporte’.

SELECT e.NOMBRES, p.PUESTO, l.LOCALIDAD
FROM EMPLEADOS e 
JOIN PUESTOS p ON e.PUESTO_ID = p.ID
JOIN DEPARTAMENTOS d ON e.DEPARTAMENTO_ID = d.ID
JOIN LOCALIDADES l ON d.LOCALIDAD_ID = l.ID
WHERE p.PUESTO LIKE 'Soporte';

-- 3. Listar los nombres de los empleados cuyo nombre termine con la letra ‘o’.

SELECT NOMBRES 
FROM EMPLEADOS
WHERE NOMBRES LIKE '%o';

-- 4. Seleccionar el nombre, el puesto y sueldo de los empleados que trabajan en la localidad Carlos Paz.

SELECT e.NOMBRES, p.PUESTO, e.SUELDO
FROM EMPLEADOS e 
JOIN PUESTOS p ON e.PUESTO_ID = p.ID
JOIN DEPARTAMENTOS d ON e.DEPARTAMENTO_ID = d.ID
JOIN LOCALIDADES l ON d.LOCALIDAD_ID = l.ID
WHERE l.LOCALIDAD LIKE 'Carlos Paz';

-- 5. Seleccionar el nombre, sueldo y localidad donde trabajan de los empleados que tengan un sueldo entre 10000 y 13000.

SELECT e.NOMBRES, e.SUELDO, l.LOCALIDAD
FROM EMPLEADOS e 
JOIN DEPARTAMENTOS d ON e.DEPARTAMENTO_ID = d.ID
JOIN LOCALIDADES l ON d.LOCALIDAD_ID = l.ID
WHERE e.SUELDO BETWEEN 10000 AND 13000; 

-- 6. Visualizar los departamentos con más de 5 empleados.

SELECT d.DENOMINACION, COUNT(e.ID)
FROM DEPARTAMENTOS d
JOIN EMPLEADOS e ON d.ID = e.DEPARTAMENTO_ID
GROUP BY d.DENOMINCACION
HAVING COUNT(e.ID) > 5;

-- 7. Nombre de los empleados que trabajan en Córdoba y cuyo puesto sea ‘Analista’ o ‘Programador’.

SELECT e.NOMBRES
FROM EMPLEADOS e 
JOIN PUESTOS p ON e.PUESTO_ID = p.ID
JOIN DEPARTAMENTOS d ON e.DEPARTAMENTO_ID = d.ID
JOIN LOCALIDADES l ON d.LOCALIDAD_ID = l.ID
WHERE l.LOCALIDAD LIKE 'Córdoba'
AND (p.PUESTO LIKE 'Analista' OR p.PUESTO LIKE 'Programador');

-- 8. Calcula el sueldo medio de todos los empleados.

SELECT AVG(SUELDO)
FROM EMPLEADOS

-- 9. ¿Cuál es el máximo sueldo de los empleados del departamento 10?

SELECT MAX(SUELDO)
FROM EMPLEADOS
WHERE DEPARTAMENTO_ID = 10;

-- 10. Calcula el sueldo mínimo de los empleados del departamento ‘Soporte’.

SELECT MIN(e.SUELDO)
FROM EMPLEADOS e
JOIN DEPARTAMENTOS d ON e.DEPARTAMENTO_ID = d.ID
WHERE d.DENOMINACION LIKE 'Soporte';

-- 11. Para cada puesto obtener la suma de sueldos.

SELECT p.PUESTO, SUM(e.SUELDO)
FROM PUESTOS p
JOIN EMPLEADOS e ON p.ID = e.PUESTO_ID
GROUP BY p.PUESTO








