require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:form)
end

get('/display') do
  @side0 = params.fetch('side0')
  @side1 = params.fetch('side1')
  @side2 = params.fetch('side2')
  @output = Triangle.new(@side0,@side1,@side2).triangle()
  erb(:display)
end
