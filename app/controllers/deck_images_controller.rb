class DeckImagesController < ApplicationController
  def new
     @deck_image = DeckImage.new
  end

  def create
    @deck_image = DeckImage.new(deck_image_params)
    @deck_image.user_id = current_user.id
    @deck_image.save
    redirect_to deck_images_path
  end

  def index
    @deck_images = DeckImage.all
  end

  def show
  end

   private
  def deck_image_params
    params.require(:deck_image).permit(:deck_name, :image, :caption)
  end
end
