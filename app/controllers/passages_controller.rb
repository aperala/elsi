class PassagesController < ApplicationController
  before_filter :authorize
  before_action :find_passage, only: [:show, :edit, :update, :destroy]

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
    if @passage.update(passage_params) 
      redirect_to @passage
    else
      render 'edit'
    end
  end

  def destroy
    @passage.destroy
    redirect_to passages_path
  end

  private
  def find_passage
    @passage = Passage.find(params[:id])
  end

  def passage_params
    params.require(:passage).permit(:title, :author, :body, :link, :user_id, :created_at, :updated_at)
  end

end
