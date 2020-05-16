class TaskController < ApplicationController
  def index
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: '新しいタスクを作成しました'
    else
      render :new
    end
  end

  def destroy
  end

 #省略

  private

  def task_params
    params.require(:task).permit(:subject, :content, :expired_at, :state, :priority, :user_id, label_ids: [])
  end
end
