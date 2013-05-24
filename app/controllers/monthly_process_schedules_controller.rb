class MonthlyProcessSchedulesController < ApplicationController

  hobo_model_controller

  auto_actions :read_only

  # def index
  #   @monthly_process_schedules = monthly_process_schedules.id.all
  #   respond_with(@monthly_process_schedules)
  # end

end
