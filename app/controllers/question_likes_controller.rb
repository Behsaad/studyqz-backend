class QuestionLikesController < ApplicationController
  before_action :set_question_like, only: [:show, :edit, :update, :destroy]
  before_filter :load_question
  # GET /question_likes
  # GET /question_likes.json
  def index
    @question_likes = QuestionLike.all
  end

  # GET /question_likes/1
  # GET /question_likes/1.json
  def show
  end

  # GET /question_likes/new
  def new
    @question_like = @question.question_likes.build
    @path = [@question, @question_like]
  end

  # GET /question_likes/1/edit
  def edit
    @path = @question_like
  end

  # POST /question_likes
  # POST /question_likes.json
  def create
    @question_like = QuestionLike.new(question_like_params)

    respond_to do |format|
      if @question_like.save
        format.html { redirect_to @question_like, notice: 'Question like was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_like }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_likes/1
  # PATCH/PUT /question_likes/1.json
  def update
    respond_to do |format|
      if @question_like.update(question_like_params)
        format.html { redirect_to @question_like, notice: 'Question like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_likes/1
  # DELETE /question_likes/1.json
  def destroy
    @question_like.destroy
    respond_to do |format|
      format.html { redirect_to question_question_likes_path(@question)  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_like
      @question_like = QuestionLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_like_params
      params.require(:question_like).permit(:user_id, :question_id)
    end

    def load_question

     if params[:question_id].nil?
      @question = @question_like.question
     else
      @question = Question.find(params[:question_id])
     end

    end
end
