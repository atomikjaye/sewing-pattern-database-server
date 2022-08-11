class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/patterns" do
    patterns = Pattern.all
    patterns.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end
  
  get "/companies" do
    companies = Company.all
    companies.to_json
  end
  
  # Add New Pattern
  post '/patterns' do
    # console.log(params[:notions])
    binding.pry
    # If params have all keys pass in (params) then use .each
    pattern = Pattern.create(params)
    pattern.to_json
  end

  patch '/patterns/:id' do
  end

  delete '/messages/:id' do
  end

end
