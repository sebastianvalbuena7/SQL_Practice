-- Empezar con el select para confirmar lo que vamos a actualizar
SELECT distinct language from countrylanguage order by language asc;

-- Actualizar todos los registros
INSERT INTO language (name)
SELECT distinct language from countrylanguage order by language asc;

-- Cambiar tipo de dato en countrylanguage - languagecode por int4
ALTER TABLE countrylanguage
ALTER COLUMN languagecode TYPE int4
USING languagecode::integer;

-- Crear el forening key y constraints de no nulo el language_code


-- Revisar lo creado