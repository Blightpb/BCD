
use db_LojaDB;

-- conferindo se está tudo certinho 
select * from tb_vendas; 

-- exercício 1
select id_nf, id_item, cod_prod, valor_unit from tb_vendas
where desconto is null;

-- exercício 2
select id_nf, id_item, cod_prod, valor_unit, valor_unit - (valor_unit*(desconto/100)) 
as "valor vendido"
from tb_vendas
where desconto is not null;

-- exercício 3
update tb_vendas
set desconto = 0
where desconto is null;

-- exercício 4
select id_nf, id_item, cod_prod, desconto, valor_unit, (valor_unit * (desconto/100)) 
as valor_vendido, valor_unit, quantidade * valor_unit 
as valor_total
from tb_vendas;

-- exercício 5
select id_nf as valor_total from tb_vendas
group by id_nf
order by id_nf desc;

-- exercício 6
SELECT id_nf, SUM(valor_unit*(desconto/100)) 
as valor_vendido, SUM(quantidade * valor_unit) 
as valor_total
from tb_vendas
group by id_nf
order by id_nf desc;

-- exercício 7
select cod_prod, max(quantidade) 
from tb_vendas
group by cod_prod;

-- exercício 8
select id_nf, cod_prod, count(quantidade)
from tb_vendas
where quantidade > 10
group by id_nf, cod_prod;

-- exercício 9
select id_nf 
as valor_total 
from tb_vendas
where id_nf < 500
group by id_nf, valor_total
order by id_nf desc;

-- exercício 10
select avg(desconto) 
as media
from tb_vendas
group by cod_prod;

-- exercício 11
select cod_prod, avg(valor_unit * (desconto/100)) 
as valor_medio
from tb_vendas
group by cod_prod;

-- exercício 12
select id_nf, sum(quantidade) 
as qtd_itens
from tb_vendas
group by id_nf;


