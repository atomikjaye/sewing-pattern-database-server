# require 'imagekitio'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Working on editting this controller
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
    companies.to_json(include: {patterns: { include: [:categories, :fabrics]} })
  end

  get "/companies/:id" do
    company = Company.find(params[:id])
    # company.to_json(include: :patterns)
    company.to_json(include: {patterns: { include: [:categories, :fabrics] }} )
  end

  get "/patterns/:id" do
    pattern = Pattern.find(params[:id])
    # pattern.to_json
    pattern.to_json(include: [:categories, :fabrics])
  end

  get "/fabrics" do
    fabrics = Fabric.all
    fabrics.to_json
  end

  post "/patterns/fabrics" do
    pat_fab = PatternFabric.create(params)
    pat_fab.to_json
  end

  post "/patterns/categories" do
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


  # # IMAGE STUFFF
  # get '/auth' do

  # end 
end
