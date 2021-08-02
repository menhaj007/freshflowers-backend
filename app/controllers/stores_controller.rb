class StoresController < ApplicationController

    def create
        new_store = Store.create(store_params)
        if new_store.valid?
            render :json => new_store, :status => :created
        else
            render :json => {errors: new_store.errors.full_messages}, :status => :unprocessable_entity
        end
    end
    def index
        stores = Store.all
        if stores.empty?
            render :json => {message: "No stores found"}, :status => :ok
        else
            render :json => stores, include: [:flowers, :profiles], :status => :ok
        end
    end

    private
    def store_params
        params.permit(:zipcode)
    end
end
