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
    console.log(params[:notions])
    pattern = Pattern.create(
      company_id: params[:company_id], 
      category_id: params[:category_id],
      pattern_code: params[:pattern_code],
      notions: params[:notions],
      size: params[:size],
      yardage: params[:yardage].to_i,
      fabrics: params[:fabrics],
      extras: params[:extras],
      image: params[:notions]
    )
  end

  patch '/patterns/:id' do
  end

  delete '/messages/:id' do
  end

end
