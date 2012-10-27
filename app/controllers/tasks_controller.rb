class TasksController < ApplicationController
  def index
    sleep 1
    @incomplete_tasks = Task.where(complete: false)
    @complete_tasks = Task.where(complete: true)
    @tasks = Task.find(:all, :order => "finish_by")
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(params[:task])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if params[:hard_button]
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    else @task.update_attributes!(params[:task])
      respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
      end
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
end