-- Criar o banco de dados
CREATE DATABASE db_petshop;
USE db_petshop;

-- Criar a tabela tb_animais
CREATE TABLE tb_animais (
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    especie ENUM('Cachorro', 'Gato', 'Pássaro', 'Coelho', 'Peixe') NOT NULL,
    raca VARCHAR(50),
    idade INT,
    nome_dono VARCHAR(100),
    telefone_dono VARCHAR(15)
);

-- Criar a tabela tb_servicos
CREATE TABLE tb_servicos (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    id_animal INT,
    tipo_servico ENUM('Banho', 'Tosa', 'Vacinação', 'Consulta Veterinária', 'Hospedagem') NOT NULL,
    data_servico DATE,
    preco DECIMAL(5,2),
    descricao VARCHAR(255),
    FOREIGN KEY (id_animal) REFERENCES tb_animais(id_animal)
);

-- Inserir dados na tabela tb_animais
INSERT INTO tb_animais (nome, especie, raca, idade, nome_dono, telefone_dono) VALUES
('Bobby', 'Cachorro', 'Labrador', 5, 'Carlos Almeida', '11987654321'),
('Luna', 'Gato', 'Siamês', 3, 'Mariana Silva', '11987654322'),
('Pipoca', 'Pássaro', 'Calopsita', 2, 'Fernanda Costa', '11987654323'),
('Thor', 'Cachorro', 'Bulldog', 4, 'Rafael Sousa', '11987654324'),
('Mia', 'Gato', 'Persa', 6, 'Camila Oliveira', '11987654325'),
('Nemo', 'Peixe', 'Goldfish', 1, 'João Santos', '11987654326'),
('Lili', 'Coelho', 'Angorá', 2, 'Luciana Mendes', '11987654327'),
('Max', 'Cachorro', 'Poodle', 3, 'Pedro Xavier', '11987654328'),
('Bella', 'Cachorro', 'Golden Retriever', 7, 'Ana Pereira', '11987654329'),
('Tom', 'Gato', 'Maine Coon', 5, 'Eduardo Nunes', '11987654330'),
('Chico', 'Pássaro', 'Papagaio', 8, 'Juliana Reis', '11987654331'),
('Rex', 'Cachorro', 'Pastor Alemão', 6, 'Roberto Lima', '11987654332'),
('Molly', 'Gato', 'Ragdoll', 4, 'Carla Souza', '11987654333'),
('Bolt', 'Cachorro', 'Beagle', 2, 'Fábio Torres', '11987654334'),
('Oscar', 'Coelho', 'Mini Lop', 3, 'Beatriz Ferreira', '11987654335');

-- Inserir dados na tabela tb_servicos
INSERT INTO tb_servicos (id_animal, tipo_servico, data_servico, preco, descricao) VALUES
(1, 'Banho', '2023-01-15', 30.00, 'Banho completo'),
(2, 'Consulta Veterinária', '2023-01-16', 120.00, 'Consulta de rotina'),
(3, 'Tosa', '2023-01-17', 25.00, 'Tosa leve nas asas'),
(4, 'Vacinação', '2023-01-18', 80.00, 'Vacina antirrábica'),
(5, 'Banho', '2023-01-19', 35.00, 'Banho com produtos especiais'),
(6, 'Hospedagem', '2023-01-20', 50.00, 'Hospedagem por um dia'),
(7, 'Consulta Veterinária', '2023-01-21', 100.00, 'Exame de saúde'),
(8, 'Tosa', '2023-01-22', 40.00, 'Tosa completa'),
(9, 'Vacinação', '2023-01-23', 75.00, 'Vacina anual'),
(10, 'Banho', '2023-01-24', 30.00, 'Banho básico'),
(11, 'Consulta Veterinária', '2023-01-25', 150.00, 'Consulta de check-up'),
(12, 'Tosa', '2023-01-26', 50.00, 'Tosa geral'),
(13, 'Vacinação', '2023-01-27', 90.00, 'Vacinação para gripe felina'),
(14, 'Hospedagem', '2023-01-28', 55.00, 'Hospedagem de um dia'),
(15, 'Consulta Veterinária', '2023-01-29', 120.00, 'Exame anual'),
(1, 'Banho', '2023-01-30', 30.00, 'Banho completo'),
(2, 'Vacinação', '2023-01-31', 80.00, 'Vacina antirrábica'),
(3, 'Consulta Veterinária', '2023-02-01', 150.00, 'Consulta para revisão'),
(4, 'Banho', '2023-02-02', 40.00, 'Banho com hidratação'),
(5, 'Tosa', '2023-02-03', 35.00, 'Tosa higiênica'),
(6, 'Vacinação', '2023-02-04', 70.00, 'Vacina anual'),
(7, 'Banho', '2023-02-05', 30.00, 'Banho completo'),
(8, 'Hospedagem', '2023-02-06', 100.00, 'Hospedagem por dois dias'),
(9, 'Consulta Veterinária', '2023-02-07', 130.00, 'Consulta de rotina'),
(10, 'Tosa', '2023-02-08', 45.00, 'Tosa completa'),
(11, 'Vacinação', '2023-02-09', 85.00, 'Vacina tríplice'),
(12, 'Banho', '2023-02-10', 30.00, 'Banho com perfume'),
(13, 'Hospedagem', '2023-02-11', 75.00, 'Hospedagem de três dias'),
(14, 'Consulta Veterinária', '2023-02-12', 110.00, 'Exame para alergias'),
(15, 'Vacinação', '2023-02-13', 90.00, 'Vacina de reforço'),
(1, 'Banho', '2023-02-14', 35.00, 'Banho especial'),
(2, 'Tosa', '2023-02-15', 30.00, 'Tosa para verão'),
(3, 'Hospedagem', '2023-02-16', 60.00, 'Hospedagem por um dia'),
(4, 'Consulta Veterinária', '2023-02-17', 140.00, 'Consulta com exames'),
(5, 'Vacinação', '2023-02-18', 80.00, 'Vacina antirrábica'),
(6, 'Banho', '2023-02-19', 35.00, 'Banho completo'),
(7, 'Tosa', '2023-02-20', 25.00, 'Tosa simples'),
(8, 'Vacinação', '2023-02-21', 85.00, 'Vacinação anual'),
(9, 'Hospedagem', '2023-02-22', 90.00, 'Hospedagem de quatro dias'),
(10, 'Consulta Veterinária', '2023-02-23', 120.00, 'Consulta de rotina'),
(11, 'Banho', '2023-02-24', 30.00, 'Banho básico'),
(12, 'Tosa', '2023-02-25', 50.00, 'Tosa completa'),
(13, 'Vacinação', '2023-02-26', 80.00, 'Vacina antirrábica'),
(14, 'Hospedagem', '2023-02-27', 55.00, 'Hospedagem de um dia'),
(15, 'Consulta Veterinária', '2023-02-28', 110.00, 'Exame de rotina');

-- exercício 1
select nome, especie, raca
from tb_animais;

-- exercício 2
select tipo_servico, data_servico, preco
from tb_servicos;

-- exercício 3
select tb_animais.nome, tb_servicos.tipo_servico
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal;

-- exercício 4
select tb_servicos.tipo_servico, tb_servicos.data_servico
from tb_animais
left join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal;

-- exercício 5
select tb_animais.nome, tb_servicos.data_servico, tb_servicos.descricao
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
where tb_servicos.data_servico >= 2023;

-- exercício 6
select tb_animais.nome, count(tb_servicos.tipo_servico)
as "serviços feitos"
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
group by tb_animais.nome
order by "serviços feitos" desc;

-- exercício 7
select tb_animais.nome, tb_servicos.preco
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
where tb_servicos.preco >= 100.00;

-- exercício 8
select tb_animais.especie,
 avg (preco) as "média"
 from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
group by tb_animais.especie; 

-- exercício 9
select tb_animais.nome_dono, count(tb_servicos.tipo_servico)
as "número de serviços"
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
where tb_animais.idade >= 5
group by tb_animais.nome_dono 
having "número de serviços" > 2;

-- exercício 10
select tb_animais.especie, max(tb_servicos.tipo_servico) as "serviço mais caro"
from tb_animais
join tb_servicos
on tb_animais.id_animal = tb_servicos.id_animal
group by tb_animais.especie;

