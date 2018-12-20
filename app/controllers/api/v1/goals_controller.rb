module Api::V1
  class GoalsController < ApplicationController

    def index
      @goals = Goal.all

      render json: @goals
    end

    def show
      @goal = Goal.find(params[:id])

      render json: @goal
    end


    def create
      # byebug
      @goal = Goal.create(goal_params)

      render json: @goal
    end

    def update
      @goal = Goal.update(params[:id], goal_params)

      if @goal.valid?
        render json: @goal
      else
        render json: @goal.errors.full_messages
      end
    end

    def destroy
      @goal = Goal.find(params[:id])
      @goal.destroy

      render json: @goal
    end

    def goal_params
      params.permit(:goalDate, :bedtimeTarget, :wakeupTarget, :user_id)
    end

  end
end
