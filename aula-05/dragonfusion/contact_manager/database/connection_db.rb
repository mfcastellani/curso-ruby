require 'sqlite3'

def connection_db
  db = SQLite3::Database.open 'contact_manager.sqlite'
end
