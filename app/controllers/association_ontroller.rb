class AssociationController < Sinatra::Base
  #CREATE Pattern and Fabric Association
  post "/patterns/fabrics" do
    pat_fab = PatternFabric.create(params)
    pat_fab.to_json
  end
  
  #CREATE Pattern and Categories Association
  post "/patterns/categories" do
    pat_cat = PatternCategory.create(params)
    pat_cat.to_json
  end
end