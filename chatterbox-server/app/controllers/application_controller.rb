class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Add routes
  get '/messages' do
    all_messages = Message.all
    all_messages.to_json
  end
  
  post '/messages' do
    message = Message.create(
      body: params[:body],
      username: params[:username]
    )
    message.to_json
  end

  patch '/messages/:id' do
    messages = Message.find(params[:id])
    messages.update(
      body: params[:body]
    )
    messages.to_json
  end

  delete '/messages/:id' do
    messages = Message.find(params[:id])
    messages.destroy
    messages.to_json
  end
  
  
end
