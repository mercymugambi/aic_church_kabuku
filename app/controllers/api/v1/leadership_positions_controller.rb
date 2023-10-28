class Api::V1::LeadershipPositionsController < ApplicationController
  def index
    @position = LeadershipPosition.all
    render json: @position
  end
end
