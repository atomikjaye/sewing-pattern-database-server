class PatternController < Sinatra::Base
  set :default_content_type, 'application/json'

  #READ All Patterns
  get "/patterns" do
    patterns = Pattern.all
    patterns.to_json
  end

  # READ One pattern
  get "/patterns/:id" do
    pattern = Pattern.find(params[:id])
    # pattern.to_json
    pattern.to_json(include: [:categories, :fabrics])
  end

  # CREATE New Pattern
  post '/patterns' do
    # console.log(params[:notions])
    # binding.pry
    # If params have all keys pass in (params) then use .each
    pattern = Pattern.create(params)
    pattern.to_json
  end

  # DELETE Pattern
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