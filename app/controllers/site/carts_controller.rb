class Site::CartsController < ApplicationController
  def index
    puts session[:name]
    @name = session[:name]
    @cargo = session[:cargo]
    @phone = session[:phone]
    @email = session[:email]
  end
end
