require 'sinatra'

get '/' do
  'de.re.com kickstart service'
end

get '/ks/:host' do |host|
  erb :'rhel_server.ks', :locals => { :host => host }
end
