class CourseTutorsController < ApplicationController
  before_action :set_course_tutor, only: [:show, :edit, :update, :destroy]
  before_filter :load_course
  # GET /course_tutors
  # GET /course_tutors.json
  def index
    @course_tutors = CourseTutor.all
  end

  # GET /course_tutors/1
  # GET /course_tutors/1.json
  def show
  end

  # GET /course_tutors/new
  def new
    @course_tutor = @course.course_tutors.build
    @path = [@course, @course_tutor]
  end

  # GET /course_tutors/1/edit
  def edit
    @path = @course_tutor
  end

  # POST /course_tutors
  # POST /course_tutors.json
  def create
    @course_tutor = CourseTutor.new(course_tutor_params)

    respond_to do |format|
      if @course_tutor.save
        format.html { redirect_to @course_tutor, notice: 'Course tutor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course_tutor }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_tutors/1
  # PATCH/PUT /course_tutors/1.json
  def update
    respond_to do |format|
      if @course_tutor.update(course_tutor_params)
        format.html { redirect_to @course_tutor, notice: 'Course tutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_tutors/1
  # DELETE /course_tutors/1.json
  def destroy
    @course_tutor.destroy
    respond_to do |format|
      format.html { redirect_to course_course_tutors_path(@course)}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_tutor
      @course_tutor = CourseTutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_tutor_params
      params.require(:course_tutor).permit(:user_id, :course_id)
    end

    def load_course

     if params[:course_id].nil?
      @course = @course_tutor.course
     else
      @course = Course.find(params[:course_id])
     end

    end
end
