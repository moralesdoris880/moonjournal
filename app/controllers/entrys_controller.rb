class EntrysController < ApplicationController
    wrap_parameters format:[]
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        user = User.find_by(id:session[:user_id])
        if user
            render json: Entry.all, status: :created
        else
            render json: {errors: ['Not found']}, status: :unauthorized
        end
    end

    def user_entries
        user = User.find_by(id:session[:user_id])
        if user
            render json: user.entrys, status: :accepted
        else
            render json: {errors: ['Not found']}, status: :unauthorized
        end
    end

    def show
        user = User.find_by(id:session[:user_id])
        if user
            render json: user.entrys.find_by(id: params[:id]), status: :accepted
        else
            render json: {errors: ['Not found']}, status: :unauthorized
        end
    end

    def create
        current_user = User.find_by(id:session[:user_id])
        if current_user
            entry = current_user.entrys.create!(entry_params)
            render json: entry
        else
            render json: {errors: ["Not authorized"]}, status: :unauthorized
        end
    end

    def update
        user =  User.find_by(id: session[:user_id])
        entry = user.entrys.find_by(id: params[:id])
        if entry
            entry.update(entry_params)
            render json: entry, status: :accepted
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    def destroy
        user =  User.find_by(id: session[:user_id])
        entry = user.entrys.find_by(id: params[:id])
        if entry
            entry.destroy
            render json: {}
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    private

    def entry_params
        params.permit(:mood,:body) 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: ["Incorrect"]}, status: :unprocessable_entity
    end

end
