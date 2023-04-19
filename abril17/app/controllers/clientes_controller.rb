class ClientesController < ApplicationController
  def index
    @clientes = Cliente.all
  end

  def new
    @cliente = Cliente.new
  end

  def show
    @cliente = Cliente.find(params[:id])
    @articulos = @cliente.articulos
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def create
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to clientes_path
    else
      render :new
    end  
  end

  def update
    @cliente = Cliente.find(params[:id])
    if @cliente.update(cliente_params)
      redirect_to cliente_path(@cliente)
    else
      render :edit
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    if @cliente.destroy
      redirect_to clientes_path
    else
      render :index
    end
  end



  private

  def cliente_params
    params.require(:cliente).permit(:nombre, :pais_id)
  end
end
