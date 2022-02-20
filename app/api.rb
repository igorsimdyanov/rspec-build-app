require 'sinatra/base'

module Currency
  class API < Sinatra::Base
    get '/latest.json' do
      File.read('fixtures/cbr.json')
    end
  end
end
