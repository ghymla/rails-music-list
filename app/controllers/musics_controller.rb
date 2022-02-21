class MusicsController < ApplicationController
  def new
    @year = Year.find(params[:year_id])
    @music = Music.new
  end

  def create
    @year = Year.find(params[:year_id])
    # take needed source, the last after "/"
    params[:music][:source] = params[:music][:source].split("/")[-1]
    @music = Music.new(music_params)
    @music.year = @year
    if @music.save
      redirect_to year_path(@year)

    else
      render :new
    end
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    redirect_to year_path(@music.year)
  end

  private

  def music_params
    params.require(:music).permit(:title, :artist, :source, :category_id)
  end
end
