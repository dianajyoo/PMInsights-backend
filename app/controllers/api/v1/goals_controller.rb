module Api::V1
  class GoalsController < ApplicationController

    def index
      @goals = Goal.all

      render json: @goals
    end

    def show
      @goal = Goal.find(params[:id])
    end

    def new
      @goal = Goal.new
    end

    def create
      # byebug
      @goal = Goal.create(goal_params)

      render json: @goal
    end

    def goal_params
      params.permit(:goalDate, :bedtimeTarget, :wakeupTarget, :user_id)
    end

  end
end
