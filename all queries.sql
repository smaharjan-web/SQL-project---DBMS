/* List all the datatypes that have numbytes>=4 and englishequiv as whole number */

SELECT *
FROM datatype_t
WHERE datatype_numbytes >= 4 AND datatype_englishequiv ='Whole number';

/*List the components that can be instantiated and has a function in their names */

SELECT component_name, component_canbeinstantiated, component_tier
FROM component_t
WHERE component_name LIKE '%function' AND component_canbeinstantiated = 'true';

/*List all the INT datatypes from each language and arrange them in descending order based on the language_uuid*/

SELECT datatype_uuid, datatype_name, language_uuid
FROM datatype_t
WHERE datatype_name ='int'
ORDER BY language_uuid DESC;

/*List all the values in the compiler_t table and order them in descending order based on langauage_uuid and ascending order based on os_uuid*/
SELECT *
FROM compiler_t
ORDER BY language_uuid DESC, os_uuid;

/*List all the datatypes that have datatype_uuid between 20 and 30 and order them in ascending order based on datatype_numbytes*/
SELECT datatype_uuid, language_uuid, datatype_numbytes
FROM datatype_t
WHERE datatype_uuid>=20 AND datatype_uuid<=30
ORDER BY datatype_numbytes;




/*Find the number of datatypes for languages that have c in their names*/
SELECT language_uuid, COUNT(datatype_name) AS count_name
FROM datatype_t
WHERE language_uuid IN
		(SELECT language_uuid
		FROM language_t
		WHERE language_name LIKE 'c%')
GROUP BY language_uuid;


/*	Find the number of components for each language that have component tiers greater than some of the other component tiers that can be instantiated*/
SELECT language_uuid, COUNT(component_name) AS num_of_components
FROM component_t
WHERE component_tier > SOME
	(SELECT component_tier
	FROM component_t
	WHERE component_canbeinstantiated='true')
GROUP BY language_uuid;
	
	
/*List all the OS s that support hardware_mtm lesser than the maximum hardware_mtm	*/
SELECT os_uuid, os_name
FROM os_t
WHERE os_uuid IN	
	(SELECT os_uuid
	FROM kernel_t
	WHERE hardware_mtm <
		(SELECT MAX(hardware_mtm)
		FROM kernel_t));
		
/*	List all the languages that have components named as class and display null if the language has no such component*/
SELECT l.language_uuid, language_name, component_name, component_tier
FROM language_t l left JOIN component_t c
on l.language_uuid = c.language_uuid AND component_name = 'class';

/*Obtain the engine names that function with the Ubuntu OS */
SELECT e.engine_uuid, engine_name, o.os_uuid, os_name
FROM engine_t e, os_t o, engineexecutable_t n
WHERE e.engine_uuid = n.engine_uuid AND n.os_uuid=o.os_uuid AND o.os_uuid=
	(SELECT os_uuid
	FROM os_t
	WHERE os_name='Ubuntu')
ORDER BY engine_uuid;

/*Find the number of LANGUAGES associated with each OS*/

SELECT o.os_uuid, os_name, COUNT(language_name) AS number_of_languages
FROM compiler_t c, os_t o, language_t l
WHERE l.language_uuid = c.language_uuid AND o.os_uuid=c.os_uuid
GROUP BY o.os_uuid, os_name;

