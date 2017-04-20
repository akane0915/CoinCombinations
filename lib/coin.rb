class Fixnum
  define_method(:coin) do
    coin_array =[]
    quarters = self./(25).floor()
    coin_array.push(quarters)
    new_cents = self.%(25)
    dimes = new_cents./(10).floor()
    coin_array.push(dimes)
    coin_array.delete(0)
    coin_array
  end
end
