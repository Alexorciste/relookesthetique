class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @category = Category.find(params[:category_id])
  end

  def create
    @product = Product.create(product_params)
    @product.category = Category.find(params[:category_id])
    if @product.save
      redirect_to category_path(@product.category), notice: 'Produit créé.'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to category_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to category_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price_cents)
  end
end
