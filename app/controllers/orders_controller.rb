class OrdersController < ApplicationController
    def create
        new_order = Order.create(order_params)
        if new_order.valid?
            render json: new_order, status: :created
        else
            render json: {errors: new_order.errors.full_messages}, status: :unprocessable_entity
        end
    end
    private
    def order_params
        params.permit(:store_id, :flower_id, :order_total)
    end
end

# t.integer :store_id
# t.integer :flower_id
# t.float :order_total