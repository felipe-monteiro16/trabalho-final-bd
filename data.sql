-- Inserindo autores
INSERT INTO autores (nome, nacionalidade) VALUES 
('Machado de Assis', 'Brasileiro'),
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânico'),
('Clarice Lispector', 'Brasileira'),
('Agatha Christie', 'Britânica'),
('Stephen King', 'Americano'),
('Victor Hugo', 'Francês'),
('Franz Kafka', 'Alemão'),
('Gabriel García Márquez', 'Colombiano'),
('Haruki Murakami', 'Japonês');

-- Inserindo editoras
INSERT INTO editoras (nome, endereco) VALUES 
('Editora Globo', 'Rua das Palmeiras, 123'),
('Rocco', 'Av. Paulista, 456'),
('Companhia das Letras', 'Rua Augusta, 789'),
('HarperCollins', 'Av. Brasil, 101'),
('Penguin Books', 'Rua Oxford, 200'),
('Suma', 'Av. Central, 303'),
('Planeta', 'Rua da Cultura, 404'),
('Intrínseca', 'Rua das Letras, 505'),
('Objetiva', 'Av. dos Livros, 606'),
('Record', 'Rua da Palavra, 707');

-- Inserindo livros
INSERT INTO livros (titulo, genero, ano_publicacao, sinopse, id_autor, id_editora) VALUES 
('Dom Casmurro', 'Romance', 1899, 'Um homem obcecado pela dúvida sobre a traição de sua esposa.', 1, 1),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 1997, 'A história de um jovem bruxo e suas aventuras em Hogwarts.', 2, 2),
('1984', 'Ficção Científica', 1949, 'Uma distopia sobre um governo totalitário.', 3, 3),
('A Hora da Estrela', 'Romance', 1977, 'A trajetória de uma jovem nordestina buscando sobrevivência no Rio de Janeiro.', 4, 4),
('O Assassinato no Expresso do Oriente', 'Mistério', 1934, 'Um intrigante assassinato a bordo de um trem de luxo.', 5, 5),
('O Iluminado', 'Terror', 1977, 'Um hotel assombrado e um escritor atormentado pelo próprio isolamento.', 6, 6),
('Os Miseráveis', 'Drama', 1862, 'A luta de um homem para se redimir em meio às desigualdades sociais.', 7, 7),
('O Processo', 'Drama', 1925, 'A angustiante trajetória de um homem acusado de um crime que desconhece.', 8, 8),
('Cem Anos de Solidão', 'Realismo Mágico', 1967, 'A saga da família Buendía em um vilarejo mítico.', 9, 9),
('Kafka à Beira-Mar', 'Ficção', 2002, 'Uma jornada surreal entre sonhos e realidade.', 10, 10);

-- Inserindo exemplares
INSERT INTO exemplares (id_livro, numero_exemplar, codigo_localizacao, status, devolucao_prevista) VALUES 
(1, 1, 'A1-001', 'disponível', '2025-06-15'),
(2, 1, 'B2-002', 'emprestado', '2025-06-20'),
(3, 1, 'C3-003', 'reservado', '2025-06-25'),
(4, 1, 'D4-004', 'disponível', '2025-06-18'),
(5, 1, 'E5-005', 'emprestado', '2025-06-22'),
(6, 1, 'F6-006', 'disponível', '2025-06-28'),
(7, 1, 'G7-007', 'reservado', '2025-06-30'),
(8, 1, 'H8-008', 'disponível', '2025-07-03'),
(9, 1, 'I9-009', 'emprestado', '2025-07-05'),
(10, 1, 'J10-010', 'disponível', '2025-07-10');

-- Inserindo usuários
INSERT INTO usuarios (nome, email, senha) VALUES 
('João Silva', 'joao@email.com', 'senha123'),
('Maria Oliveira', 'maria@email.com', 'senha456'),
('Carlos Souza', 'carlos@email.com', 'senha789'),
('Fernanda Lima', 'fernanda@email.com', 'senhaabc'),
('Ricardo Mendes', 'ricardo@email.com', 'senhadef'),
('Tatiane Rocha', 'tatiane@email.com', 'senhagh'),
('Bruno Santos', 'bruno@email.com', 'senhaijk'),
('Luiza Martins', 'luiza@email.com', 'senhalmn'),
('Eduardo Carvalho', 'eduardo@email.com', 'senhaopq'),
('Sara Pinheiro', 'sara@email.com', 'senharst');

-- Inserindo empréstimos
INSERT INTO emprestimos (id_exemplar, id_usuario, data_emprestimo, data_devolucao, status) VALUES 
(1, 1, '2025-06-01', '2025-06-15', 'ativo'),
(2, 2, '2025-06-05', '2025-06-20', 'concluído'),
(3, 3, '2025-06-10', '2025-06-25', 'atrasado'),
(4, 4, '2025-06-12', NULL, 'ativo'),
(5, 5, '2025-06-15', NULL, 'ativo'),
(6, 6, '2025-06-18', '2025-07-02', 'concluído'),
(7, 7, '2025-06-20', NULL, 'atrasado'),
(8, 8, '2025-06-22', NULL, 'ativo'),
(9, 9, '2025-06-25', '2025-07-05', 'concluído'),
(10, 10, '2025-06-28', NULL, 'ativo'),
(1, 2, '2025-07-01', '2025-07-10', 'concluído'),
(3, 4, '2025-07-05', NULL, 'ativo'),
(5, 6, '2025-07-08', NULL, 'ativo'),
(7, 7, '2025-07-10', NULL, 'atrasado'),
(9, 1, '2025-07-12', '2025-07-20', 'concluído'),
(10, 3, '2025-07-15', NULL, 'ativo'),
(4, 5, '2025-07-18', NULL, 'ativo'),
(2, 9, '2025-07-20', '2025-07-30', 'concluído'),
(8, 8, '2025-07-25', NULL, 'ativo');

-- Inserindo logs
INSERT INTO logs (id_usuario, id_emprestimo, acao, data) VALUES 
(1, 1, 'emprestimo', '2025-06-01 10:00:00'),
(2, 2, 'devolucao', '2025-06-20 15:30:00'),
(3, 3, 'devolucao', '2025-06-25 18:45:00'),
(4, 4, 'emprestimo', '2025-06-12 12:00:00'),
(5, 5, 'emprestimo', '2025-06-15 14:30:00'),
(6, 6, 'devolucao', '2025-07-02 10:45:00'),
(7, 7, 'emprestimo', '2025-06-20 17:00:00'),
(8, 8, 'reserva', '2025-06-22 19:15:00'),
(9, 9, 'devolucao', '2025-07-05 20:30:00'),
(10, 10, 'emprestimo', '2025-06-28 21:45:00'),
(2, 11, 'emprestimo', '2025-07-01 10:15:00'),
(4, 12, 'emprestimo', '2025-07-05 11:30:00'),
(6, 13, 'emprestimo', '2025-07-08 12:45:00'),
(7, 14, 'emprestimo', '2025-07-10 14:00:00'),
(1, 15, 'emprestimo', '2025-07-12 15:15:00'),
(3, 16, 'emprestimo', '2025-07-15 16:30:00'),
(5, 17, 'emprestimo', '2025-07-18 17:45:00'),
(9, 18, 'devolucao', '2025-07-20 18:30:00'),
(8, 19, 'emprestimo', '2025-07-25 19:45:00');