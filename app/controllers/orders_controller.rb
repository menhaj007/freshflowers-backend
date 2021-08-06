class OrdersController < ApplicationController
    def create
        new_order = Order.create(order_params)
        if new_order.valid?
            render json: new_order, status: :created
        else
            render json: {errors: new_order.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            # render json: user.store.orders.to_json, except: [:store, :created_at, :updated_at]
            render json: user.store, inlude: [:orders]
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end
    private
    def order_params
        params.require(:order).permit(:id, :store_id, :flower_id)
    end
end

# t.integer :store_id
# t.integer :flower_id
# t.float :order_total