require_relative '../connection_db'

db.execute <<-SQL
  create table if not exists contacts (
    name varchar(100) not null,
    means_contact varchar(50) not null,
    cpf varchar(5) not null unique
  );
SQL
