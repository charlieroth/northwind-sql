# `northwind-sql`

`northwind-sql` is a project to learn SQL using the fictional sales data of
the Northwind Traders company, which imports and exports specialtiy foods
from around the world.

The Northwind database is a sample database that was originally created by
Microsoft and used as the basis for their tutorials in a variety of database
products for decades. The Northwind database contains the sales data for a
fictitious company called “Northwind Traders,” which imports and exports
specialty foods from around the world. The Northwind database is an excellent
tutorial schema for a small-business ERP, with customers, orders, inventory,
purchasing, suppliers, shipping, employees, and single-entry accounting.

## Project Details

This project includes a Docker Compose file to start a PostgreSQL database
and run database migrations with the `geni` tool. The project also includes
example queries that cover the following topics:

- SQL Basic
- Manipulating Data
- Mutli-Table Queries
- Aggregate Functions
- Scalar Functions
- Subqueries and Common Table Expressions
- Window Functions

## Project Setup

Clone the repository:

```bash
git clone https://github.com/charlieroth/northwind-sql.git
```

Since this project uses [uv](https://docs.astral.sh/uv/), you can initialize the
virtual environment and install the dependencies with the following command:

```bash
uv sync
```

### Database Setup

The project uses PostgreSQL as the database. To start the database and run
the database migrations, run the following command:

```bash
docker compose up -d
```

## Seed the Database

The file `nortwind-data.sql` contains the SQL statements to populate the tables
with data. To seed the database, run the following command:

```bash
docker exec -i <cotainer-id> psql -h localhost -p 5432 -U postgres -d northwind < ./northwind-data.sql
```
