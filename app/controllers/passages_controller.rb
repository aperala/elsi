class PassagesController < ApplicationController

  before_filter :authorize
  
  def index
    @passages = Passage.all
  end

  def show
  end

  def new
    @passage = Passage.new
  end

  def create
    @passage = Passage.create(passage_params)
    redirect_to passages_path
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private
  def passage_params
    params.require(:passage).permit(:title, :author, :body, :link, :user_id, :created_at, :updated_at)
  end

end
