class EntrysController < ApplicationController
    wrap_parameters format:[]
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

end
