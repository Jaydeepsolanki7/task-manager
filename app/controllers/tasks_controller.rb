class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update
      redirect_to @task
    else
      render :edit, status: unprocessable_entity
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:tasks).permit(:title, :description, :due_date)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
