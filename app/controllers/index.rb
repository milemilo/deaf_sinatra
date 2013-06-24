get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  if @grandma == params[:user_input].upcase
    @grandma = "Stop Shouting"
  else
    @grandma = "Speak Up Sonny"
  end
  redirect to("/?grandma=#{@grandma}")
end


