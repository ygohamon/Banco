/*1*/
SELECT pedido.codigo, cliente.nome, cliente.contato
FROM pedido
INNER JOIN cliente
ON cliente.codigo = pedido.cliente
ORDER BY cliente.contato
/*2*/
SELECT produto.nome, tipo.nome
FROM produto
INNER JOIN tipo
ON TIPO.codigo = produto.tipo
WHERE PRODUTO.tipo IN(1,8)
ORDER BY produto.tipo
/*3*/
SELECT datapedid ,COUNT(CLIENTE) PEDIDO 
FROM pedido 
GROUP BY datapedid

/*4*/
SELECT funcionario.nome, cidade.nome
FROM funcionario
INNER JOIN cidade
ON CIDADE.codigo = funcionario.cidade
WHERE funcionario.estcivil = 'S'
/*5*/

/*6*/

/*7*/
SELECT pedido.codigo NUMERO_DO_PEDIDO, cliente.nome CLIENTE
FROM pedido
INNER JOIN cliente
ON cliente.codigo = pedido.cliente
ORDER BY pedido.cliente

/*8*/

/*9*/
SELECT pedido.codigo, funcionario.nome
FROM pedido
INNER JOIN funcionario
ON pedido.vendedor = funcionario.codigo
WHERE YEAR(GETDATE())-YEAR(FUNCIONARIO.datanasc)>18 AND FUNCIONARIO.ESTCIVIL = 'S' AND FUNCIONARIO.EMAIL IS NOT NULL

/*2 aula*/

SELECT P.CODIGO PEDIDO, C.NOME CLIENTENTE, F.NOME VENDEDOR, P.VIA ENVIO
FROM PEDIDO P
INNER JOIN CLIENTE C
ON P.CLIENTE =C.CODIGO
INNER JOIN FUNCIONARIO F
ON P.VENDEDOR = F.CODIGO
ORDER BY P.CODIGO

SELECT funcionario.NOME FUNCIONARIO, setor.NOME SETOR, funcao.NOME FUNÇÃO, funcionario.SALARIO + funcao.gratific SALARIO
FROM SETOR
INNER JOIN funcionario
ON SETOR.SIGLA = funcionario.setor
INNER JOIN funcao
ON funcionario.funcao = funcao.codigo
ORDER BY SETOR.nome

SELECT funcionario.nome, C1.nome NATURAL, funcionario.cidade, C2.nome RESIDE 
FROM funcionario
INNER JOIN cidade C1
ON funcionario.natural = C1.CODIGO
INNER JOIN cidade C2
ON funcionario.cidade = C2.CODIGO
ORDER BY funcionario.nome

/*SEGUNDO PASSO*/

SELECT * FROM setor

SELECT S1.NOME, S2.NOME SUPERIOR, F1.nome CHEFE, F2.NOME AS 'CHEFE SETOR'
FROM SETOR S1
INNER JOIN SETOR S2
ON S2.superior = S2.sigla
INNER JOIN funcionario F1
ON F1.codigo = S1.chefe
INNER JOIN funcionario F2
ON F2.codigO = S2.chefe

/* left e righ */

SELECT FU.NOME FUNÇÃO, F.NOME FUNCIONAIRO 
FROM funcao FU
RIGHT OUTER JOIN funcionario F 
ON FU.codigo = F.funcao

SELECT FU.NOME FUNÇÃO, F.NOME FUNCIONAIRO 
FROM funcao FU
LEFT OUTER JOIN funcionario F 
ON FU.codigo = F.funcao

SELECT T.NOME TIPO, P.NOME PRODUTO
FROM produto P
RIGHT OUTER JOIN tipo T
ON T.codigo = P.tipo

SELECT T.NOME TIPO, P.NOME PRODUTO
FROM TIPO T
LEFT OUTER JOIN produto P
ON T.codigo = P.tipo

