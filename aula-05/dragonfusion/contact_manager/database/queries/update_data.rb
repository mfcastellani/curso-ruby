require_relative '../connection_db.rb'
require 'sqlite3'

def update_contact(new_contact,cpf)
    db = SQLite3::Database.open 'contact_manager.sqlite'
    db.execute "update contacts set means_contact=? where cpf=?", new_contact ,cpf
    db.close
end

#need a cpf to update a name
def update_name(new_name,cpf)
    db = SQLite3::Database.open 'contact_manager.sqlite'
    db.execute 'update contacts set name=? where cpf=?', new_name ,cpf
    db.close
end

#need a cpf to update a name and a formcontact field
def update_both(new_name,new_contact,cpf)
    db = SQLite3::Database.open 'contact_manager.sqlite'
    db.execute 'update contacts set name=?,means_contact=? where cpf=?', new_name,new_contact ,cpf
    db.close
end 

#starting with a cpf
def verify_cpf(cpf)
    db = SQLite3::Database.open 'contact_manager.sqlite'
    db.execute('select name, means_contact, cpf from contacts where cpf=? ', cpf) do |row|
    end
    db.close
end