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

  get "/fabrics" do
    fabrics = Fabric.all
    fabrics.to_json
  end

  post "/patterns_fabrics" do
    pat_fab = PatternFabric.create(params)
    pat_fab.to_json
  end

  post "/patterns_categories" do
    pat_cat = PatternCategory.create(params)
    pat_cat.to_json
  end
  
  # Add New Pattern
  post '/patterns' do
    # console.log(params[:notions])
    # binding.pry
    # If params have all keys pass in (params) then use .each
    pattern = Pattern.create(params)
    pattern.to_json
  end

  patch '/patterns/:id' do
  end

  delete '/patterns/:id' do
    pattern = Pattern.find(params[:id])
    pat_fab = PatternFabric.find_by(pattern_id: pattern.id)
    pat_cat = PatternCategory.find_by(pattern_id: pattern.id)
    pattern.destroy
    pat_fab.destroy
    pat_cat.destroy
    pattern.to_json
  end

end
