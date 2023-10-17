# app/controllers/api/v1/users_controller.rb
class Api::V1::UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
    def create
      required_member_id = params[:member_id] # Extract the member ID from the form submission
  
      required_member = Member.joins(:leadership_positions).find_by(id: required_member_id)
  
      if required_member.present?
        # Check if a user with the same email already exists
        if User.exists?(email: params[:email])
          render json: { error: 'User with this email already exists' }, status: :conflict
          return
        end
  
        # Proceed with creating the user
        user = User.new(
          email: params[:email],
          password: params[:password],
          member_id: required_member.id,
          super_admin: false
        )
  
        if user.save
          # Handle successful user creation
          render json: { message: 'User created successfully' }, status: :created
        else
          # Handle user creation failure
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: 'Member with the required position not found' }, status: :not_found
      end
    end
  end
  