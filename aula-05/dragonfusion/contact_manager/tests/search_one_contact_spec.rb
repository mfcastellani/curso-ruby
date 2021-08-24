require_relative '../database/connection_db'
require_relative '../lib/contact'

RSpec.describe Contact do
  context 'testing search one contact' do
    let(:manager) { Contact.new }
    it 'return only one contact' do
      cpf = '18295324306'
      test1 = db.execute("select name, means_contact, cpf from contacts where cpf = #{cpf}")

      expect(test1[0][2]).to eq('18295324306')
    end
  end
end
