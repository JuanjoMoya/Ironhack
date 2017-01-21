class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries.where("created_at >= ? AND created_at <= ?", Date.today.beginning_of_month, Date.today.end_of_month)
  end

  def new
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new
  end

  def create
    @my_project = Project.find params[:project_id]
    # @my_entry = @my_project.time_entries.new(hours: params[:time_entry][:hours], minutes: params[:time_entry][:minutes], date: params[:time_entry][:date])
    @my_entry = @my_project.time_entries.new(entry_params)
    if @my_entry.save
      redirect_to "/projects/#{@my_project.id}/time_entries"
    else
      render "new"
    end
  end

  def edit
    @my_project = Project.find params[:project_id]
    @my_entry = @my_project.time_entries.find params[:id]
  end

  def update
    @my_project = Project.find_by(id: params[:project_id])
    @my_entry = @my_project.time_entries.find_by(id: params[:id])

    # if @my_entry.update(hours: params[:time_entry][:hours], minutes: params[:time_entry][:minutes], date: params[:time_entry][:date])
    if @my_entry.update(entry_params)
      redirect_to "/projects/#{@my_project.id}/time_entries"
    else
      render "edit"
    end
  end

  def destroy
    @my_project = Project.find_by(id: params[:project_id])
    @my_entry = @my_project.time_entries.find_by(id: params[:id])
    @my_entry.destroy
    redirect_to "/projects/#{@my_project.id}/time_entries"
  end


  private # método que sólo se puede ejecutar dentro de la clase
  def entry_params
    params.require(:time_entry).permit(:hours, :minutes, :date)
  end

end
