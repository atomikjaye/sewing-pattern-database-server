class FabricController < Sinatra::Base
  get "/fabrics" do
    fabrics = Fabric.all
    fabrics.to_json
  end

end