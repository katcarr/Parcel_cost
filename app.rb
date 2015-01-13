require('sinatra')
require('sinatra/reloader')
require('./lib/Parcel')
also_reload('lib/**/*.rb')

get("/") do
  erb(:parcel_form)
end

get("/parcel_cost") do
  @length=(params.fetch('length')).to_f()
  @width=(params.fetch('width')).to_f()
  @height=(params.fetch('height')).to_f()
  @weight=(params.fetch('weight')).to_f()
  customer_parcel=Parcel.new(@length,@width,@height,@weight)
  @cost=(customer_parcel.cost_to_ship())
  erb(:parcel_cost)
end
