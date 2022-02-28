class QuotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @service = Api::Quotes::Index.call(api_params[:tag])

    render_service
  end

  private

  def render_service
    if !@service.result.blank?
      render json: { quotes: @service.result }, status: :ok
    else
      render json: { message: "No quotes found!" }, status: :not_found
    end
  end

  def api_params
    params.permit :tag
  end
end
