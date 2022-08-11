class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/patterns" do
  end

  post '/patterns' do
  end

  patch '/patterns/:id' do
  end

  delete '/messages/:id' do
  end

end
