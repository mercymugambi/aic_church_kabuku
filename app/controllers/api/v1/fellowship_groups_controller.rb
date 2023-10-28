class Api::V1::FellowshipGroupsController < ApplicationController
  def index
    @fellowship_groups = FellowshipGroup.all
    render json: @fellowship_groups
  end
  def create
    @fellowship_groups = FellowshipGroup.new(groups_params)
    @fellowship_groups.created_by = current_user.id

    if @fellowship_groups.save
      redirect_to @fellowship_groups, notice: 'Fellowship Group was successfully created.'
    else
      puts @fellowship_groups.errors.full_messages
      render :new
    end
  end

  private

  def groups_params
    params.require(:fellowship_groups).permit(:group_name, :group_code)
  end
end
