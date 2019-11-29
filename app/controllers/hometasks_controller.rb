class HometasksController < ApplicationController
before_action :authenticate_user!

  def create
    @home = Home.find(params[:home_id])
    @task = Task.find(params[:task_id])
    @hometask = Hometask.new(home: @home, task: @task, user: current_user, done: true)
    if @hometask.save
      redirect_to  home_tasks_path(@home), notice: 'La tarea ha sido realizada'
    else
      redirect_to  home_tasks_path(@home), alert: 'La tarea no se ha realizado'
    end
  end

  def index
    @hometasks = current_user.hometasks.order('created_at DESC')
  end

  def destroy
    @home = Home.find(params[:home_id])
    @task = Task.find(params[:task_id])
    @hometask = Hometask.find_by(home: @home, task: @task, user: current_user)
    @hometask.destroy
    redirect_to  home_tasks_path(@home), alert: 'La tarea ha sido eliminada'
  end
end
