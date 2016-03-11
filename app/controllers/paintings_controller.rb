class PaintingsController < ApplicationController
  def index
    if params.key? :artist_id
      @paintings = Painting.where(artist_id: params[:artist_id])
    elsif params.key? :museum_id
      @paintings = Painting.where(museum_id: params[:musum_id])
    elsif params.key? :q
      @paintings = Painting.search(params[:q])

      elsif
      @paintings = Painting.all
    end
  end
end
