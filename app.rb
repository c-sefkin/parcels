require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

  get('/') do
   erb(:index)
  end

  get('/cost') do
    @cost = params.fetch('volume').parcel_cost('distance')
    erb(:answer)
  end
  
