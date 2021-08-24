require 'sqlite3'

def db
  SQLite3::Database.open 'contact_manager.sqlite'
end
