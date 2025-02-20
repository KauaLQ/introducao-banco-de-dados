<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=005CA4&height=120&section=header"/>

# Exemplo Prático: Sistema de Gerenciamento Escolar 📘
### 🎯 Objetivos
- **Criação do Banco de Dados:** Criar um banco de dados no PostgreSQL.
- **Modelagem de Tabelas:** Desenvolver tabelas com chaves primárias e estrangeiras para representar as entidades de um sistema escolar.
- **Inserção de Dados:** Inserir registros de exemplo nas tabelas criadas.
- **Elaboração de Diagrama ER:** Desenhar um diagrama ER que represente graficamente as relações entre as entidades. 

### 🏫 Cenário
#### Você foi contratado para desenvolver um sistema de gerenciamento escolar. Para isso, deverá criar um banco de dados que contenha as seguintes entidades:

- **Professores:** Representa os professores da escola.
- **Disciplinas:** Representa as disciplinas oferecidas. Cada disciplina é ministrada por um professor.
- **Alunos:** Representa os alunos matriculados na escola.
- **Matrículas:** Relaciona os alunos às disciplinas em que estão matriculados (relação muitos-para-muitos). 

### 📝 Elaboração do Diagrama de Entidade-Relacionamento (ER)

- **Professores:**
  - Atributos: id (PK), nome, departamento.
- **Disciplinas:**
  - Atributos: id (PK), nome, carga_horaria, professor_id (FK).
  - Relação: Cada disciplina é ministrada por um professor (relação 1:N entre Professores e Disciplinas).
- **Alunos:**
  - Atributos: id (PK), nome, data_nascimento.
- **Matrículas:**
  - Atributos: id (PK), aluno_id (FK), disciplina_id (FK), data_matricula.
  - Relação: Representa a associação entre Alunos e Disciplinas (relação N:N, implementada via a tabela Matrículas).

#### O Diagrama ER Deve Incluir:

- [x] **Cada entidade com seus atributos, destacando as chaves primárias (PK) e estrangeiras (FK).**
- [x] **As relações entre as entidades, com cardinalidades:**
  - **Professores (1) ↔ (N) Disciplinas.**
  - **Alunos (N) ↔ (N) Disciplinas, mediada pela tabela Matrículas.**

---
