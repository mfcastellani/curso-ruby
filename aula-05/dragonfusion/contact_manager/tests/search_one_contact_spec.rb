require_relative '../database/connection_db'
require_relative '../lib/contact'

RSpec.describe Contact do
  context 'testing search one contact' do
    let(:manager) { Contact.new }
    it 'return only one contact' do
    end
  end
end
