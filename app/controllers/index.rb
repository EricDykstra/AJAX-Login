get '/' do
  @photos = Photo.all
  erb :index
end

post '/upload/?' do
  Photo.create :url => params["url"],
               :filename => params["filename"]
  redirect '/'
end
