# Adapted from Dorina Mihai's original code.
# 'kind' is wether the contact type is an e-mail or phone number, while 'content' is the e-mail or phone number itself

class Contact
  attr_accessor :kind, :content
  
  def to_s
    "#{kind}: #{content}"
  end
end