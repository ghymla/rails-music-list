class MusicsController < ApplicationController
  def new
    @year = Year.find(params[:year_id])
    @music = Music.new
  end

  def create
    @year = Year.find(params[:year_id])
    @music = Music.new(music_params)
    @music.year = @year
    if @music.save
      redirect_to year_path(@year)
    else
      render :new
    end
  end

  def music_params
    params.require(:music).permit(:title, :artist, :category_id)
  end
end
