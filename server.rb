require 'sinatra'

get '/home' do
  erb:index
end

get '/' do
  redirect to('/home')
end


get '/portfolio' do
  erb:gallery
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/about_me' do
  @skills = ['headspins', 'perfect pitch', 'I can run faster than a car', 'See Es Es', 'Backflip over a stack of 5 chairs']
  @interests = ['chilling in general', 'kitty martial arts', 'art for winners', 'music for babies', 'films for the courageous', 'coffee brewed from tibetan monks']
  erb:about_me
end

get '/favorites' do
  @fave_links = ["google.com", "hover.com", "amazon.ca", "reddit.com"]
  erb:favorites
end
