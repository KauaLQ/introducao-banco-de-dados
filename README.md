<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=336791&height=120&section=header"/>

# Estudos sobre Banco de Dados com PostgreSQL <img width='70' heigth='70' src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg" />
#### 📘 Este repositório é um guia de estudo e pode ser expandido com novos exemplos e melhorias. Fique à vontade para contribuir!

## 📌 Introdução  

Um **banco de dados** é uma coleção organizada de dados que pode ser armazenada, gerenciada e acessada de maneira eficiente. Ele permite o armazenamento persistente de informações, garantindo integridade, segurança e rapidez na manipulação de dados.

> [!TIP]
> **Você pode saber mais sobre os tipos de bancos de dados clicando [_aqui_](useful/TYPES.md).**

O **PostgreSQL** é um dos bancos de dados relacionais mais poderosos e amplamente utilizados no mundo. Ele é **open-source**, altamente extensível e segue os padrões SQL, oferecendo recursos avançados como **transações ACID, suporte a JSON, consultas complexas e replicação**.  

---

## 🛠️ Instalação do PostgreSQL  

### 📌 No Linux (Ubuntu/Debian)  
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```
Para iniciar o serviço:  
```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```
Para acessar o terminal do PostgreSQL:  
```bash
sudo -u postgres psql
```

### 📌 No Windows  
1. Baixe o instalador em [https://www.postgresql.org/download/](https://www.postgresql.org/download/)  
2. Siga as instruções do instalador.  
3. Utilize o **pgAdmin** para gerenciar o banco de dados visualmente ou acesse o terminal do PostgreSQL (`psql`).  

---

## 🏗️ Criando e Manipulando um Banco de Dados  

### 📌 Criar um novo banco de dados  
```sql
CREATE DATABASE minha_base;
```
### 📌 Conectar-se a um banco de dados  
```sql
\c minha_base;
```
### 📌 Criar uma tabela  
```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    idade INT
);
```
### 📌 Inserir dados  
```sql
INSERT INTO usuarios (nome, email, idade) VALUES 
('Kauã Lima', 'kaua@email.com', 19),
('Kaline', 'kaline@email.com', 22);
```
### 📌 Selecionar todos os registros  
```sql
SELECT * FROM usuarios;
```
### 📌 Filtrar dados  
```sql
SELECT * FROM usuarios WHERE idade > 20;
```
### 📌 Atualizar dados  
```sql
UPDATE usuarios SET idade = 23 WHERE nome = 'Kaline';
```
### 📌 Excluir um registro  
```sql
DELETE FROM usuarios WHERE id = 1;
```

> [!TIP]
> **A própria _IDE_ do PostGreSQL fornece suporte para essas manipulações sem precisar utilizar linha de comando. Use o que achar melhor 😉.**

---

## ⚡ Conceitos Importantes  

- **Chave Primária (Primary Key)**: Garante que cada registro na tabela seja único.  
- **Chave Estrangeira (Foreign Key)**: Relaciona tabelas diferentes, garantindo integridade referencial.  
- **Índices**: Melhoram a performance das consultas.  
- **Transações**: Permitem executar múltiplas operações como uma única unidade atômica.  
```sql
BEGIN;
UPDATE usuarios SET idade = 24 WHERE nome = 'Kaline';
COMMIT;
```
- **Procedures e Funções**: Permitem automação dentro do banco.  
