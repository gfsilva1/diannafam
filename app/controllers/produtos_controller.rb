class ProdutosController < ApplicationController
  def home
  end

  def index
    @produtos=Produto.all
  end

  def new
    @produto=Produto.new
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def create
    @produto = Produto.new(produto_params)
    @produto.save
    redirect_to produto_path(@produto)
  end

  def destroy

    @produto = Produto.find(params[:id])
    @produto.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to produtos_path
  end

  private

  def produto_params
    params.require(:produto).permit(:nome, :cor, :tamanho, :valor, :photo)
  end

end
