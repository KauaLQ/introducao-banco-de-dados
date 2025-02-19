<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=0076D1&height=120&section=header"/>

## 🗂️ Tipos de Bancos de Dados  

Os bancos de dados podem ser classificados em diferentes tipos, dependendo da forma como armazenam e organizam os dados. Aqui estão os principais:  

### 📌 1. Bancos de Dados Relacionais (SQL)  
Os **bancos de dados relacionais** organizam os dados em tabelas com linhas e colunas, seguindo o modelo relacional. Eles utilizam a **Linguagem SQL (Structured Query Language)** para manipulação de dados e garantem integridade através de **chaves primárias e estrangeiras**.  

✅ **Características:**  
- Estrutura fixa (esquema rígido).  
- Suporte a **transações ACID** (Atomicidade, Consistência, Isolamento e Durabilidade).  
- Relacionamento entre tabelas usando **chaves primárias e estrangeiras**.  

📌 **Exemplos:** PostgreSQL, MySQL, MariaDB, SQL Server, Oracle Database.  

---

### 📌 2. Bancos de Dados Não Relacionais (NoSQL)  
Os **bancos de dados NoSQL** armazenam dados de maneira flexível, sem seguir um esquema fixo como os relacionais. Eles são muito utilizados em **aplicações web escaláveis e sistemas distribuídos**.  

✅ **Principais tipos de NoSQL:**  

- **Bancos de Dados Baseados em Documentos** 📝  
  - Armazenam dados no formato **JSON ou BSON** (semelhante a objetos).  
  - Ótimos para aplicações flexíveis, como **APIs e sistemas web dinâmicos**.  
  - 🔹 **Exemplos:** MongoDB, CouchDB.  

- **Bancos de Dados Chave-Valor** 🔑  
  - Estrutura simples de pares **chave → valor**.  
  - Muito utilizados para **cache, sessões de usuário e configurações**.  
  - 🔹 **Exemplos:** Redis, DynamoDB.  

- **Bancos de Dados Orientados a Grafos** 🔗  
  - Modelam dados como **nós e relações** (ótimos para redes sociais, recomendações e sistemas de rotas).  
  - 🔹 **Exemplos:** Neo4j, ArangoDB.  

- **Bancos de Dados de Colunas Largas** 📊  
  - Organizam os dados em **famílias de colunas**, sendo altamente escaláveis.  
  - Muito usados para **Big Data e Data Warehouses**.  
  - 🔹 **Exemplos:** Apache Cassandra, Google Bigtable.  

---

### 📌 3. Bancos de Dados Orientados a Objetos  
Os **bancos de dados orientados a objetos** armazenam dados como objetos, permitindo integração direta com linguagens de programação que seguem esse paradigma.  

✅ **Características:**  
- Boa opção para sistemas baseados em **linguagens orientadas a objetos** (Java, Python, C++).  
- Menos utilizados que os relacionais e NoSQL.  

📌 **Exemplos:** db4o, ObjectDB.  

---

### 📌 4. Bancos de Dados em Memória  
Esses bancos armazenam os dados diretamente na **RAM**, oferecendo **altíssima velocidade** de leitura e escrita.  

✅ **Usos comuns:**  
- Cache para acelerar aplicações web.  
- Processamento em tempo real.  

📌 **Exemplos:** Redis, Memcached.  

---

### 📌 5. Bancos de Dados Distribuídos  
Os bancos distribuídos armazenam dados em **vários servidores interconectados**, garantindo **alta disponibilidade e tolerância a falhas**.  

✅ **Usados em:**  
- Sistemas globais (Google, Amazon, Facebook).  
- Aplicações que precisam escalar horizontalmente.  

📌 **Exemplos:** Apache Cassandra, Google Spanner.
