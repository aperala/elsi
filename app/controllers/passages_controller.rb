class PassagesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy

  end

  private
  def passage_params
    params.require(:passage).permit(:title, :author, :body, :link, :created_at, :updated_at)
  end

end
