SELECT  distinct city 
FROM station WHERE city not LIKE 'A%' 
   and city not LIKE 'E%' 
   and city not LIKE 'I%' 
   and city not LIKE 'O%' 
   and city not LIKE 'U%';