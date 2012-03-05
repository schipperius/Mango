class GalleryController < ApplicationController

  def gallery
    @title = "Gallery"
  end

  def photos
    @title = "Photos"
  end

  def videos
    @title = "Videos"
  end

  def music
    @title = "Music"
  end

end
