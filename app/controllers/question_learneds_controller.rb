class QuestionLearnedsController < ApplicationController
  before_action :set_question_learned, only: [:show, :edit, :update, :destroy]
  before_filter :load_question
  # GET /question_learneds
  # GET /question_learneds.json
  def index
    @question_learneds = QuestionLearned.all
  end

  # GET /question_learneds/1
  # GET /question_learneds/1.json
  def show
  end

  # GET /question_learneds/new
  def new
    @question_learned = @question.question_learneds.build
    @path = [@question, @question_learned]
  end

  # GET /question_learneds/1/edit
  def edit
     @path = @question_learned
  end

  # POST /question_learneds
  # POST /question_learneds.json
  def create
    @question_learned = QuestionLearned.new(question_learned_params)

    respond_to do |format|
      if @question_learned.save
        format.html { redirect_to @question_learned, notice: 'Question learned was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_learned }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_learned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_learneds/1
  # PATCH/PUT /question_learneds/1.json
  def update
    respond_to do |format|
      if @question_learned.update(question_learned_params)
        format.html { redirect_to @question_learned, notice: 'Question learned was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_learned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_learneds/1
  # DELETE /question_learneds/1.json
  def destroy
    @question_learned.destroy
    respond_to do |format|
      format.html { redirect_to question_question_learneds_path(@question) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_learned
      @question_learned = QuestionLearned.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_learned_params
      params.require(:question_learned).permit(:user_id, :question_id)
    end

    def load_question

     if params[:question_id].nil?
      @question = @question_learned.question
     else
      @question = Question.find(params[:question_id])
     end

    end
end
