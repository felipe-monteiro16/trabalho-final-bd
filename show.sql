-- Listar todos os livros e seus respectivos anos.
SELECT l.titulo, a.nome FROM livros l
JOIN autores a ON a.id = l.id_autor;

-- Encontre todos os livros 1900 a 1950.
SELECT l.titulo, l.ano_publicacao
FROM livros l
WHERE l.ano_publicacao >= 1900 AND l.ano_publicacao < 1950;

-- Exibir exemplares disponíveis para empréstimo.
SELECT l.titulo, e.status, e.codigo_localizacao
FROM exemplares e 
JOIN livros l ON e.id_livro = l.id
WHERE e.status = 'disponível';

-- Verificar histórico de empréstimos de um usuário específico.
SELECT u.nome, e.data_emprestimo, e.status, l.titulo
FROM emprestimos e
JOIN exemplares ex ON e.id_exemplar = ex.id_livro
JOIN livros l ON ex.id_livro = l.id
JOIN usuarios u ON u.id = e.id_usuario
WHERE e.id_usuario = 1;

-- Listar os usuários que possuem empréstimos atrasados.
SELECT u.nome, e.status, e.data_emprestimo, l.titulo
FROM emprestimos e
JOIN usuarios u ON u.id = e.id_usuario
JOIN exemplares ex ON ex.id = e.id_exemplar
JOIN livros l ON l.id = ex.id_livro
WHERE e.status = 'atrasado';

-- Exibir editoras que possuem livros cadastrados na base.
SELECT e.nome, l.titulo
FROM editoras e
JOIN livros l ON l.id_editora = e.id;

-- Verificar quantidade de empréstimos feitos por cada usuário.
SELECT u.id, u.nome, COUNT(e.id)
FROM emprestimos e
JOIN usuarios u ON u.id = e.id_usuario
GROUP BY u.id, u.nome
ORDER BY u.id;

-- Listar ações de um determinado usuário no sistema.
SELECT u.nome, l.acao, l.data 
FROM logs l
JOIN usuarios u ON u.id = l.id_usuario
WHERE u.id = 3; 

-- Mostra contagem dos livros de cada genero
SELECT l.genero, COUNT(*)
FROM livros l
GROUP BY l.genero;

-- Mostra o livro e a editora ao lado
SELECT l.titulo, e.nome
FROM livros l
JOIN editoras e ON l.id_editora = e.id;

--SELECT ALL
SELECT * FROM autores;
SELECT * FROM livros;
SELECT * FROM exemplares;
SELECT * FROM editoras;
SELECT * FROM usuarios;
SELECT * FROM logs;
SELECT * FROM emprestimos;
