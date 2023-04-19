lass Clientes::ArticulosController < ApplicationController
  def index
    @articulos = @cliente.articulos
  end

  def new
    
  end

  def show
  end

  def edit
  end
end
