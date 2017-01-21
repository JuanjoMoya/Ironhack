require 'artii'

class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create

    text = params[:ascii][:ascii_user_text]

    a = Artii::Base.new :font => 'slant'

    @ascii_text = a.asciify(text)

    render "results"
  end

end
