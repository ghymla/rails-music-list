class CategorysController < ApplicationController
  def show
    @music = Music.find(params[:music_id])
    @category = @music.category
  end
end
