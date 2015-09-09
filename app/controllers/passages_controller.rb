class PassagesController < ApplicationController
  before_filter :authorize
  before_action :find_passage, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag]
      @passages = @current_user.passages.tagged_with(params[:tag])
    elsif params[:search]
      @passages = Passage.search(params[:search]).order("created_at DESC")
    else
      @passages = @current_user.passages.all.order('created_at DESC')
    end
  end

  def show
  end

  def new
    @passage = Passage.new
  end

  def create
    @passage = @current_user.passages.build(passage_params)
    if @passage.valid?
      @passage.save
      redirect_to passages_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @passage.update(passage_params) 
      redirect_to @passages
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
    params.require(:passage).permit(:title, :author, :body, :link, :user_id, :created_at, :updated_at, :tag_list)
  end

end
