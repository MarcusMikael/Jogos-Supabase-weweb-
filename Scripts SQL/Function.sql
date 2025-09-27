-- Função para calcular o valor gasto do usuario
CREATE FUNCTION total_gasto_usuario (p_id INT)
RETURNS NUMERIC AS $$
DECLARE v_total NUMERIC;
BEGIN
v_total = (
select SUM(j.preco)
FROM jogos j
JOIN bibliotecas b ON b.id_jogo = j.id
WHERE b.id_usuario = p_id
);

IF v_total IS NULL THEN
   v_total = 0;
END IF;

  RETURN v_total;
END;
$$ LANGUAGE plpgsql;
