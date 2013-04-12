get '/' do
  @photos = Photo.all
  erb :index
end

post '/upload/?' do
  Photo.create :url => params["url"],
               :filename => params["filename"] 
  redirect '/'
end

get '/login' do
  session[:id] = nil if session[:id]
  erb :_login, :layout => false
end

get '/logout' do
  session[:user_id] = nil
  ""
end

post '/login' do
  @username = params[:username]
  @password = params[:password]
  @user = User.find_by_name(@username)
  if @user
    if @user.password == @password
    #   redirect '/'
    # else
    #   redirect '/?error=Invalid%20username%20or%20password'
    end
  else
    @user = User.create :name => @username,
                        :password => @password
  end
  session[:id] = @user.id
  return ""
end

get '/users/:user_id/albums' do

end

get '/albums/:album_id' do
  @photos = Photo.where('album_id = ?', params[:album_id])
  @user = User.where('id = ?', Album.find(params[:album_id].user_id))
  erb :album
end

get '/albums/:album_id/:photo_id' do

end
