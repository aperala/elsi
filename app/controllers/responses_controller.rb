class ResponsesController < ApplicationController
  before_filter :authorize

  def new
    @response = Response.new
  end

  def create
    @passage = Passage.find(params[:response][:passage_id])
    @response = @passage.responses.create(response_params)
    @response.save
    redirect_to passage_path(@response.passage)
  end



  private
    def response_params
      params.require(:response).permit(:body, :passage_id, :user_id)
    end
end