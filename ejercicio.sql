/*
Ejercicio MinimalNumberOfPackages
fuuente https://dotnetfiddle.net/e1Z1qC

ejercicio reptile
fuente:https://dotnetfiddle.net/8l6q8H


 public static int MinimalNumberOfPackages(int items, int availableLargePackages, int availableSmallPackages)
    {
        int lgBoxNeeded = items / 5;
        int count = -1;

        if ((availableLargePackages * 5) + availableSmallPackages < items)
        {
            return count;
        }

        if (lgBoxNeeded <= availableLargePackages && items % 5 <= availableSmallPackages)
        {
            count = lgBoxNeeded + (items % 5);
        }
        else
        {
            int diff = lgBoxNeeded - availableLargePackages; //calculate how many items are left

            if ((diff * 5) <= availableSmallPackages)
            {
                count = availableLargePackages + (diff * 5) + (items % 5);
            }
        }

        return count;
    }

Ejercicio
Los científicos han descubierto una especie de dragones que escupen fuego. El análisis de ADN del dragón revela que se trata de un reptil 
que evolucionó a partir de un ancestro común del cocodrilo, de cientos de millones de años. 
A pesar de que están relacionados, las diferentes especies de reptiles no pueden cruzarse
A los investigadores les gustaría desarrollar un modelo de ciclo de vida de esta rara especie, para poder estudiarlos mejor. 
complete la implementación a continuación para que:
	* la especie firedragon implementa la interfaz IReptile.
	* cuando un huevo de reptil eclosiona, se creará un nuevo reptil de la misma especie que puso el huevo.
	* se lanza una "excepción" si un huevo de reptil intenta eclosionar más de una vez.





EJERCICIO 9
un motor de búsqueda interno de un sitio web almacena en la siguiente tabla el número de veces que se buscó cada frase (en minúsculas):

CREATE TABLE searchedPhrases (
  id INTEGER PRIMARY KEY NOT NULL,
  text VARCHAR(200) NOT NULL,
  count INTEGER NOT NULL
);


INSERT INTO searchedPhrases(id, text, count) values(1, 'toaster', 1145);
INSERT INTO searchedPhrases(id, text, count) values(2, 'washing machine', 879);
INSERT INTO searchedPhrases(id, text, count) values(3, 'hairdryer', 476);
INSERT INTO searchedPhrases(id, text, count) values(4, 'samsung tv', 2117);
INSERT INTO searchedPhrases(id, text, count) values(5, 'samsung', 2118);
INSERT INTO searchedPhrases(id, text, count) values(6, 'samsung tablet', 899);
INSERT INTO searchedPhrases(id, text, count) values(7, 'samsung s8', 2117);

Las sugerencias de autocompletar se generan utilizando la siguiente consulta SQL (donde input_text está en minúsculas)
	select *
	from searchedPhrases
	where LOWER(text) like LOWER('%samsung%') order by count desc


Escribir una declaración sql para crear un índice que mejorará el rendimiento de esta consulta

create nonclustered index idx1 on searchedPhrases (text)


ver el caso de ejemplo para más detalles








CREATE TABLE empleados (
  id INTEGER NOT NULL PRIMARY KEY,
  mgrId INTEGER,
  name VARCHAR(30) NOT NULL,
  FOREIGN KEY (mgrId) REFERENCES employees(id)
);

INSERT INTO empleados(id, mgrId, name) VALUES(1, NULL, 'Joey');
INSERT INTO empleados(id, mgrId, name) VALUES(2, 1, 'Ross');
INSERT INTO empleados(id, mgrId, name) VALUES(3, 1, 'Chandler');

EJERCICIO 10
select e.name, e1.name as manager
from empleados e
left outer join empleados e1 on e.mgrId = e1.id


EJERCICIO 12
select t.id, e.name as author  , e1.name as assignee
from employees e
inner join tasks t on e.id = t.authorId
left outer join employees e1 on t.assigneeId = e1.id

*/


