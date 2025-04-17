class RunEnvironmentsController < ApplicationController
  def new
  end

  def create
  end

  def import
    file = params[:file]
    return redirect_to run_environments_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'
    RunEnvironmentImportService.new.call(file)
    redirect_to run_environments_path, notice: 'CSV imported!'
  end

  def show
    @run_environment = RunEnvironment.find(params[:id])
  end

  def index
    @run_environments = RunEnvironment.all
  end
end
