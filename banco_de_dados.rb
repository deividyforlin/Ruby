
# pesquisar no ssms SQL Server Management Studio
# comando "select" coluna "firstname e lastname"
#Ex: pesquisar nome e sobrenome no banco de dados:

SELECT firstname, lastname
FROM person.person;

puts -------------------------------------------------

# comando select distinct
#Ex: pesquisar e remover nome duplicados em uma tabela no banco de dados:
# comando "select distinct" coluna "firstname"

select distinct firstname
from person.person;

puts -------------------------------------------------

# comando where
# Ex: pesquisar nome 'Miller' em uma tabela no banco de dados:
# comando "where" coluna "lastname" usando operador logico =

# select coluna1, coluna2
# from 'tabela' sem ; no final
# where condição ( operadores logicos ) e entre aspas simples 'VALOR OU MONE'

select *
from person.person
where lastname = 'Miller'

puts -------------------------------------------------

# para adicionar mais itens a busca, neste caso colocamos o "and" 

select *
from person.person
where lastname = 'Miller' and firstname = 'anna'

puts -------------------------------------------------

# comando where
# Ex: pesquisar preço em uma tabela no banco de dados:
# comando "where" coluna "listprice" usando operador logico < e >

# select coluna1, coluna2
# from 'tabela' sem ; no final
# where condição ( operadores logicos ) e o valor

select *
from production.Product
where ListPrice > 1500 
--------------------
# para adicionar mais itens a busca, neste caso colocamos o "and" 

where ListPrice > 1500 and ListPrice < 5500

puts -------------------------------------------------