-- Criação da tabela de usuário
CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE 
);

-- Criação da tabela de jogos
CREATE TABLE jogos (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(150),
  genero VARCHAR(100),
  preco NUMERIC(10,2),
  data_lancamento DATE
);

-- Criação da tabela bibliotecas
CREATE TABLE bibliotecas (
  id SERIAL PRIMARY KEY,
  id_usuario INT REFERENCES usuarios(id),
  id_jogo INT REFERENCES jogos(id),
  data_adicao DATE
);
