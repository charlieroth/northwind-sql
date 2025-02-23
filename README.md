# `northwind-sql`

`northwind-sql` is a project to learn SQL using the fictional sales data of
the Northwind Traders company, which imports and exports specialtiy foods
from around the world.

## Useful Links

- https://docs.yugabyte.com/preview/sample-data/northwind/
- https://github.com/yugabyte/yugabyte-db/blob/master/sample/northwind_ddl.sql
- https://github.com/yugabyte/yugabyte-db/blob/master/sample/northwind_data.sql

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
