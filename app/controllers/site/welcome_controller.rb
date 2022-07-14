class Site::WelcomeController < ApplicationController
  def index
    if params[:commit].to_s == "Gerar"
      puts "chamando parametros" 
      session[:name] = params[:name]
      session[:cargo] = params[:cargo]
      session[:phone] = params[:phone]
      session[:email] = params[:email]

      puts session[:name]

      @name = params[:name]
      @cargo = params[:cargo]
      @phone = params[:phone]
      @email = params[:email]
      
      puts @name 
      puts @cargo
      puts params[:name].nil? != true &&
       params[:cargo].nil? != true &&
       params[:email].nil? != true &&
       params[:phone].nil? != true
       
    redirect_to site_carts_index_path , notice: 'Preencha os Dados'
  else 
    return site_welcome_index_path, notice: 'Tudo Certo'
  end
  end
end
