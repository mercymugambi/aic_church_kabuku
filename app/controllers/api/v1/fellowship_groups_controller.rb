class Api::V1::FellowshipGroupsController < ApplicationController
    def index
        @fellowship_groups = FellowshipGroup.all
        render json: @fellowship_groups
    end
end
