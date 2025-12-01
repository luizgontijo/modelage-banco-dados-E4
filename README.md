# 🎯 Projeto SQL – Sistema de Doações

Este repositório contém os scripts SQL do projeto da disciplina de Modelagem e Banco de Dados.  
O sistema gerencia **DOADORES**, **CAMPANHAS** e **DOAÇÕES**, permitindo manipulação e consulta dos dados de forma segura e estruturada.

---

## 📌 Conteúdos deste repositório

### ✔ 01_insert.sql

Script responsável por inserir dados iniciais nas tabelas principais:

- DOADORES
- CAMPANHAS
- DOAÇÕES

---

### ✔ 02_select.sql

Consultas SQL que utilizam:

- SELECT
- WHERE
- ORDER BY
- JOIN
- LIMIT
- Funções de agregação (SUM)

---

### ✔ 03_update_delete.sql

Comandos de manipulação de dados utilizando:

- UPDATE (mínimo 3)
- DELETE (mínimo 3, com condições seguras)

---

## 🧱 Modelo Lógico do Banco de Dados

### DOADOR

| Atributo  | Tipo de dado        | Descrição               |
| --------- | ------------------- | ----------------------- |
| id_doador | INT (PK)            | Identificador do doador |
| nome      | VARCHAR(120)        | Nome completo           |
| email     | VARCHAR(120) UNIQUE | E-mail do doador        |
| telefone  | VARCHAR(20)         | Telefone                |

### CAMPANHA

| Atributo    | Tipo de dado | Descrição                 |
| ----------- | ------------ | ------------------------- |
| id_campanha | INT (PK)     | Identificador da campanha |
| nome        | VARCHAR(120) | Nome da campanha          |
| descricao   | TEXT         | Descrição da campanha     |
| data_inicio | DATE         | Início                    |
| data_fim    | DATE         | Fim                       |

### DOACAO

| Atributo    | Tipo de dado  | Descrição                   |
| ----------- | ------------- | --------------------------- |
| id_doacao   | INT (PK)      | Identificador da doação     |
| id_doador   | INT (FK)      | Relacionamento com DOADOR   |
| id_campanha | INT (FK)      | Relacionamento com CAMPANHA |
| valor       | DECIMAL(10,2) | Valor doado                 |
| data_doacao | DATE          | Data da doação              |

---

## ▶ Como executar o projeto

### 1. Criar o banco de dados

```sql
CREATE DATABASE sistema_doacoes;
USE sistema_doacoes;
```
