class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Working on editting this controller
  # Add your routes here

  get "/" do
    { message: "Wrong route!" }.to_json
  end

end
