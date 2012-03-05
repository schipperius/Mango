class PagesController < ApplicationController

  def front_cover
    @title = "Front Cover"
  end

  def preface
    @title = "Preface"
  end

  def acknowledge
    @title = "Acknowledgements"
  end

  def about_book
    @title = "About"
  end

  def about_author
    @title = "Author"
  end

  def colophon
    @title = "Colophon"
  end

  def back_cover
    @title = "Back Cover"
  end

end