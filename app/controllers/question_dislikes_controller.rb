class QuestionDislikesController < ApplicationController
  before_action :set_question_dislike, only: [:show, :edit, :update, :destroy]
  before_filter :load_question
  # GET /question_dislikes
  # GET /question_dislikes.json
  def index
    @question_dislikes = QuestionDislike.all
  end

  # GET /question_dislikes/1
  # GET /question_dislikes/1.json
  def show
  end

  # GET /question_dislikes/new
  def new
    @question_dislike = @question.question_dislikes.build
    @path = [@question, @question_dislike]
  end

  # GET /question_dislikes/1/edit
  def edit
    @path = @question_dislike
  end

  # POST /question_dislikes
  # POST /question_dislikes.json
  def create
    @question_dislike = QuestionDislike.new(question_dislike_params)

    respond_to do |format|
      if @question_dislike.save
        format.html { redirect_to @question_dislike, notice: 'Question dislike was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_dislike }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_dislike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_dislikes/1
  # PATCH/PUT /question_dislikes/1.json
  def update
    respond_to do |format|
      if @question_dislike.update(question_dislike_params)
        format.html { redirect_to @question_dislike, notice: 'Question dislike was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_dislike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_dislikes/1
  # DELETE /question_dislikes/1.json
  def destroy
    @question_dislike.destroy
    respond_to do |format|
      format.html { redirect_to question_question_dislikes_path(@question) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_dislike
      @question_dislike = QuestionDislike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_dislike_params
      params.require(:question_dislike).permit(:user_id, :question_id)
    end

    def load_question

     if params[:question_id].nil?
      @question = @question_dislike.question
     else
      @question = Question.find(params[:question_id])
     end

    end

end
