use db_mercadosenai;

/* 11. Crie uma VIEW chamada "vw_clientes_aniversariantes" que exibe o nome do cliente, telefone, 
e mês de nascimento, para clientes que fazem aniversário no primeiro semestre (janeiro a junho). */
create view vw_clientes_aniversariantes as
select nome_cliente, telefone_cliente,
month(data_nascimento) as mes_nascimento
from tb_cliente
where month (data_nascimento) between 1 and 6 ;

select * from vw_clientes_aniversariantes;

/* 12. Crie uma VIEW chamada "vw_produtos_lucro" que exibe o nome do produto, categoria e o lucro bruto 
de cada produto (preco_venda - preco_compra) apenas para os produtos com estoque superior a 50 unidades. */
create view vw_produtos_lucro as
select nome_produto, categoria,
preco_venda - preco_compra as "lucro bruto"
from tb_produto
where estoque > 50;

select * from vw_produtos_lucro;

/* 13. Crie uma VIEW chamada "vw_clientes_mais_lucrativos" que exibe o nome do cliente, 
telefone, cidade, estado e a soma do lucro bruto de todos os produtos com estoque menor que 
50 vendidos para clientes que moram em estados do Sudeste (SP, RJ, MG, ES). */

/* 14. Usando a view "vw_clientes_aniversariantes", selecione os nomes dos clientes que 
fazem aniversário em um mês ímpar e ordene pelo mês de nascimento. Utilize uma condição 
para exibir o mês por extenso (ex: 'Janeiro', 'Março', etc.). */

/* 15. Usando as views "vw_produtos_lucro" e "vw_clientes_mais_lucrativos", 
selecione os nomes dos clientes e o lucro total de produtos da categoria 'Alimentos'
 vendidos para esses clientes, mas apenas para aqueles que geraram lucro acima de 100. 
 Ordene pelo lucro em ordem decrescente.*/
