require 'minitest/autorun'
require_relative '../lib/lib_calc'

describe Calc do
  before do
    @calc = Calc.new
  end

  after do
    @calc = nil
  end

  describe 'add' do
    it 'Dever ser igual a 10' do
      expect(@calc.add(5, 5).must_equal(10))
    end
  end
end
