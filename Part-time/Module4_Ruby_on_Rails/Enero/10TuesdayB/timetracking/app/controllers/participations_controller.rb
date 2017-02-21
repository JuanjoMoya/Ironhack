class ParticipationsController < ApplicationController
  def new
    @person = Person.find_by(id:parms[:id])
    @person.participations.new(:project_id => params[:participations][:project_id], :person_id => @person.id)
    @person.save
    redirect_to person_path(@person)
  end
end
