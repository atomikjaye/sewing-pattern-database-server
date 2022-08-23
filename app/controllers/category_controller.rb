class AssociationController < Sinatra::Base
  
  #READ Pattern Categories
  get "/categories" do
    categories = Category.all
    categories.to_json
  end

end