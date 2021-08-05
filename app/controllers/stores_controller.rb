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
            render :json => stores, include: [:flowers], :status => :ok
            # render :json => stores.to_json(except: [:created_at, :updated_at]), include: [:flowers, :profiles], :status => :ok
        end
    end
    def show
        store = Store.find_by(id: params[:id])
        if store
            render json: store.to_json(except: [:created_at, :updated_at]), :status => :ok
        else
            render json: {error: "Not found"}, :status => :not_found
        end

    end

    def update
        store = Store.find_by(id: params[:id])
        if store
            store.update(store_params)
            render json: store.to_json(except: [:created_at, :updated_at]), status: :ok
        else
            render json: {errors: store.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def edit
        store = Store.find(params[:id])
        store.assign_attributes(store_params)
        if store.valid?
            store.save
            render json: store.to_json(except: [:created_at, :updated_at]), status: :ok
        else
            render json: {errors: store.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def store_params
        # params.permit(:address, :image_url, :zipcode, :user_id)
        params.require(:store).permit(:address, :image_url, :zipcode, :user_id)
    end
end
