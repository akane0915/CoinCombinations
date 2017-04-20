require ('rspec')
require ('coin.rb')

describe('Fixnum#coin') do
  it('takes user input for number of cents and returns number of cents') do
    expect(4.coin()).to(eq(4))
  end
end
