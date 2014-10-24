get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/user/:id' do
  @user = User.find(params[:id])
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :whatever
end

post '/user' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  u = User.create(params[:user])
  redirect_to "/user/#{u.id}"
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"

  erb :post_cool_url
end