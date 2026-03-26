# 📘 Data Definition Language (DDL)

## 📌 Overview
**Data Definition Language (DDL)** is a subset of SQL used to define, modify, and manage the structure of database objects such as tables, schemas, and indexes.

---

## 🧠 What is DDL?

DDL commands are used to:

- Create database objects  
- Modify existing structures  
- Delete database objects  
- Remove all records from a table (without deleting structure)

---

## 🔑 Common DDL Commands

| Command    | Description |
|-----------|------------|
| CREATE    | Creates new database objects |
| ALTER     | Modifies existing objects |
| DROP      | Deletes objects permanently |
| TRUNCATE  | Removes all records from a table |

---

# 🏗️ 1. CREATE TABLE

## 📖 Description
`CREATE TABLE` is used to create a new table in the database.

## 🧾 Syntax
```sql
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint
);
