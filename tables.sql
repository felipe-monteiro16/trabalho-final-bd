CREATE TABLE autores(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100) NOT NULL
);

CREATE TABLE editoras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL,
    sinopse TEXT NOT NULL,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL REFERENCES editoras(id) ON DELETE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES autores(id) ON DELETE CASCADE
);


CREATE TABLE exemplares (
    id SERIAL PRIMARY KEY,
    id_livro INT NOT NULL,
    numero_exemplar INT NOT NULL,
    codigo_localizacao VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL CHECK (status IN ('disponível', 'emprestado', 'reservado')),
    devolucao_prevista DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id) ON DELETE CASCADE
);

CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    id_exemplar INT NOT NULL,
    id_usuario INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    status VARCHAR(50) NOT NULL CHECK (status IN ('ativo', 'concluído', 'atrasado')),
    FOREIGN KEY (id_exemplar) REFERENCES exemplares(id) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);



CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_emprestimo INT NOT NULL,
    acao VARCHAR(255) NOT NULL CHECK (acao IN ('emprestimo', 'devolucao', 'reserva')),
    data TIMESTAMP NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_emprestimo) REFERENCES emprestimos(id) ON DELETE CASCADE
);


