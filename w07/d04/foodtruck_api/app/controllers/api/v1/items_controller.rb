module Api
	module V1
		class ItemsController < ApplicationController
			before_action :set_item, only: [:show, :edit, :update, :destroy]

			def index
				@items = Item.all

				respond_to do |format|
					format.json { render json: @items, :status => 500 }
					format.xml { render xml: @items }
				end
			end

			# POST /items
  		# POST /items.json
  		def create
    		@item = Item.new(item_params)

    		respond_to do |format|
      		if @item.save
        		format.html { redirect_to @item, notice: 'Item was successfully created.' }
        		format.json { render :show, status: :created, location: @item }
      		else
        		format.html { render :new }
        		format.json { render json: @item.errors, status: :unprocessable_entity }
      		end
    		end
  		end

			private
    	# Use callbacks to share common setup or constraints between actions.
    		def set_item
      		@item = Item.find(params[:id])
    		end

    	# Never trust parameters from the scary internet, only allow the white list through.
    	def item_params
      	params.require(:item).permit(:name, :description)
    	end
		end
	end
end
