require 'sinatra'

get '/' do
  'de.re.com kickstart service'
end

get '/ks/:kind/:host' do |kind,host|
  erb "#{kind}.ks".to_sym, :locals => { :host => host }
end
