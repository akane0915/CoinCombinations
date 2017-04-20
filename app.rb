require ('sinatra')
require ('sinatra/reloader')
require ('./lib/coin')

get ('/') do
  erb(:index)
end

get ('/results') do
  @number=params.fetch('number')
  results=@number.coin()
  @quarters = results[0]
  @dimes = results[1]
  @nickels = results[2]
  @pennies = results[3]
  erb(:results)
end
