class StaticPagesController < ApplicationController
  def index

  end

  def image
  end

  def video
    @user = Contact.new
  end

  def components
  end

  def ashish
    @a = User.all
  end
end
