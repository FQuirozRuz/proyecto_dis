class ProductosController < ApplicationController
	def index
		@producto = Producto.all
	end 
	#GET/articles/id
	def show
		@producto = Producto.find(params[:id])
	end
	#GET/articles/new
	def new
		@producto = Producto.new
	end
	def create
		@producto = Producto.new(producto_params)
		if @producto.save
			redirect_to @producto
		else
			render :new
		end
		
	end
	def edit
		@producto = Producto.find(params[:id])
	end
	def update
		@producto = Producto.find(params[:id])
		if @producto.update(producto_params)
			redirect_to @producto
		else
			render :edit
		end
	end
	def destroy
		@producto = Productofind(params[:id])
		@producto.destroy
		redirect_to productos_path
	end
	private

	def producto_params
		params.require(:producto).permit(:codigo,:nombre)
	end
end