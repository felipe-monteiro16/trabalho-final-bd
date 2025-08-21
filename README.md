# 📚 Sistema de Biblioteca — Estrutura do Banco de Dados

## 📘 Livros
- **ID_Livro**: `SERIAL PRIMARY KEY`  
  Identificação única do livro.
- **Título**: `VARCHAR(255) NOT NULL`  
  Nome do livro.
- **Gênero**: `VARCHAR(100) NOT NULL`  
  Categoria literária (ex: Romance, Ficção).
- **Ano_Publicação**: `INT NOT NULL`  
  Ano em que foi publicado.
- **Sinopse**: `TEXT NOT NULL`  
  Resumo da obra.
- **ID_Autor**: `INT NOT NULL`  
  Chave estrangeira que referencia `autores(id)`.
- **ID_Editora**: `INT NOT NULL`  
  Chave estrangeira que referencia `editoras(id)`.

---

## 📕 Exemplares
- **ID_Exemplar**: `SERIAL PRIMARY KEY`  
  Identificação única do exemplar físico.
- **ID_Livro**: `INT NOT NULL`  
  Chave estrangeira que referencia `livros(id)`.
- **Número_Exemplar**: `INT NOT NULL`  
  Código interno do exemplar.
- **Código_Localização**: `VARCHAR(255) NOT NULL`  
  Localização física (estante, prateleira).
- **Status**: `VARCHAR(50) NOT NULL`  
  Situação do exemplar: `disponível`, `emprestado`, `reservado`.
- **Devolução_Prevista**: `DATE NOT NULL`  
  Data estimada para devolução.

---

## ✍️ Autores
- **ID_Autor**: `SERIAL PRIMARY KEY`  
  Identificação única do autor.
- **Nome**: `VARCHAR(255) NOT NULL`  
  Nome completo.
- **Nacionalidade**: `VARCHAR(100) NOT NULL`  
  País de origem.

---

## 🏢 Editoras
- **ID_Editora**: `SERIAL PRIMARY KEY`  
  Identificação da editora.
- **Nome**: `VARCHAR(255) NOT NULL`  
  Nome da editora.
- **Endereço**: `VARCHAR(255) NOT NULL`  
  Endereço físico.

---

## 👤 Usuários
- **ID_Usuário**: `SERIAL PRIMARY KEY`  
  Identificação única do usuário.
- **Nome**: `VARCHAR(255) NOT NULL`  
  Nome completo.
- **Email**: `VARCHAR(255) NOT NULL`  
  Contato do usuário.
- **Senha**: `VARCHAR(255) NOT NULL`  
  Senha para login.

---

## 🔁 Empréstimos
- **ID_Emprestimo**: `SERIAL PRIMARY KEY`  
  Identificador do registro de empréstimo.
- **ID_Exemplar**: `INT NOT NULL`  
  Exemplar emprestado (chave estrangeira).
- **ID_Usuário**: `INT NOT NULL`  
  Usuário que pegou o livro (chave estrangeira).
- **Data_Emprestimo**: `DATE NOT NULL`  
  Quando o exemplar foi retirado.
- **Data_Devolução**: `DATE NOT NULL`  
  Data da devolução ou prazo final.
- **Status**: `VARCHAR(50) NOT NULL`  
  Estado do empréstimo: `ativo`, `concluído`, `atrasado`.

---

## 🗂️ Logs
- **ID_Log**: `SERIAL PRIMARY KEY`  
  Registro da ação realizada.
- **ID_Usuário**: `INT NOT NULL`  
  Quem realizou a ação.
- **ID_Emprestimo**: `INT NOT NULL`  
  A qual empréstimo a ação está relacionada.
- **Ação**: `VARCHAR(255) NOT NULL`  
  Descrição da ação (ex: "emprestou", "devolveu").
- **Data**: `TIMESTAMP NOT NULL`  
  Momento da ação.

