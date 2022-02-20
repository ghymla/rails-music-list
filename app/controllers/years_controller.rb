class YearsController < ApplicationController
  def index
    @year = Year.all
  end

  def show
    @year = Year.find(params[:id])
    @musics
  end
end
