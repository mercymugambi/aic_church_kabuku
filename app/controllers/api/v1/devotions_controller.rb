class Api::V1::DevotionsController < ApplicationController
  def index
    @devotions = Devotion.all
    render json: @devotions
  end
end
