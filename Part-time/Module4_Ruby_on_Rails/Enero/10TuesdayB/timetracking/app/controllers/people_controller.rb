class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    Person.create person_params
  end

  def show
    @person = Person.find_by(id: params[:id])
    @available_projects = Project.all - @person.projects
  end

  private

  def person_params
    params.require(:person).permit(:name)
  end

end
