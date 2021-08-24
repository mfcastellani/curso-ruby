require 'sqlite3'
# Using .sqlite file ext to explicitly declare it's a SQLite database, since there's no official standard
# and no impact on functionality.

begin

    db = SQLite3::Database.open "contact_manager.sqlite"
    db.execute "CREATE TABLE IF NOT EXISTS Contatos(Id INTEGER PRIMARY KEY, Nome TEXT, Contato TEXT, CPF TEXT)"
    
rescue SQLite3::Exception => e 
    
    puts "Ocorreu um erro!"
    puts e
    
ensure
    db.close if db
end