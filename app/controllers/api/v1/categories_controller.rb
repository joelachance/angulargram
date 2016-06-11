module Api
  module V1
    class CategoriesController < ApplicationController
      skip_before_filter :verify_authenticity_token
      respond_to :json

      def index
        @categories = Category.all
        respond_to do |f|
          f.json {render json: @categories}
        end
      end
    end
  end
end
