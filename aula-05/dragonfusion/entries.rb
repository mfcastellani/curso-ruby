# Adapted from Dorina Mihai's original code.
# Every contact in the phonebook is referenced in the code by the word 'entry'

require "./contact.rb"

class Entries
  attr_writer :name, :contact, :cpf
  
  def initialize
    @name = name
    @contact = contact
    @cpf = cpf
  end

  def new_contact(kind, content) 
    contact = Contact.new
    contact.kind = kind
    contact.content = content
    contact.push(contact)
  end
  
  def cpf
    @cpf
  end
  
  def name
    @name
  end
  
  def print_entries
    puts "Agenda"
    contact.each { |contact| puts contact }
  end