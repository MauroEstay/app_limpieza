class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @home_id = Home.find(params[:home_id])
    @task_id = Home.find(params[:home_id])
  end
end
