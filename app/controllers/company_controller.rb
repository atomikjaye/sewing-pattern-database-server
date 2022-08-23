class CompanyController < Sinatra::Base

  #READ All Companies incl patterns and their assoc categories and fabrics
  get "/companies" do
    companies = Company.all
    companies.to_json(include: {patterns: { include: [:categories, :fabrics]} })
  end
  
  #READ One Companies incl patterns and their assoc categories and fabrics
  get "/companies/:id" do
    company = Company.find(params[:id])
    # company.to_json(include: :patterns)
    company.to_json(include: {patterns: { include: [:categories, :fabrics] }} )
  end


end