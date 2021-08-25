require 'sqlite3'

def db
  SQLite3::Database.open 'contact_manager.sqlite'
end

db.execute <<-SQL
  create table if not exists contacts (
    name varchar(100) not null,
    means_contact varchar(50) not null,
    cpf varchar(11) not null unique
  );
SQL
