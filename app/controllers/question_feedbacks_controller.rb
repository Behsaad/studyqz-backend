class QuestionFeedbacksController < ApplicationController
  before_action :set_question_feedback, only: [:show, :edit, :update, :destroy]
  before_filter :load_question
  # GET /question_feedbacks
  # GET /question_feedbacks.json
  def index
    @question_feedbacks = QuestionFeedback.all
  end

  # GET /question_feedbacks/1
  # GET /question_feedbacks/1.json
  def show
  end

  # GET /question_feedbacks/new
  def new
    @question_feedback = @question.question_feedbacks.build
    @path = [@question, @question_feedback]
  end

  # GET /question_feedbacks/1/edit
  def edit
     @path = @question_feedback
  end

  # POST /question_feedbacks
  # POST /question_feedbacks.json
  def create
    @question_feedback = QuestionFeedback.new(question_feedback_params)

    respond_to do |format|
      if @question_feedback.save
        format.html { redirect_to @question_feedback, notice: 'Question feedback was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_feedback }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_feedbacks/1
  # PATCH/PUT /question_feedbacks/1.json
  def update
    respond_to do |format|
      if @question_feedback.update(question_feedback_params)
        format.html { redirect_to @question_feedback, notice: 'Question feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_feedbacks/1
  # DELETE /question_feedbacks/1.json
  def destroy
    @question_feedback.destroy
    respond_to do |format|
      format.html { redirect_to question_question_feedback_path(@question)  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_feedback
      @question_feedback = QuestionFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_feedback_params
      params.require(:question_feedback).permit(:user_id, :question_id, :message)
    end

    def load_question

     if params[:question_id].nil?
      @question = @question_feedback.question
     else
      @question = Question.find(params[:question_id])
     end

    end
end
