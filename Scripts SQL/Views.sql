-- View para ver os jogos mais adicionado em bibliotecas de usuarios.
CREATE VIEW top_jogos as
select j.nome_jogo as jogo, COUNT(b.id_jogo) as total_adicoes
FROM bibliotecas b
JOIN jogos j ON b.id_jogo = j.id
GROUP BY nome_jogo
ORDER BY total_adicoes DESC;

-- View mostrando o nome e total gasto do usuario.
CREATE VIEW relatorio_gasto as
SELECT u.nome, total_gasto_usuario(u.id::INT) as total_gasto
FROM usuarios u;
