class CourseStudentsController < ApplicationController
  before_action :set_course_student, only: [:show, :edit, :update, :destroy]
  before_filter :load_course
  # GET /course_students
  # GET /course_students.json
  def index
    @course_students = CourseStudent.all
  end

  # GET /course_students/1
  # GET /course_students/1.json
  def show
  end

  # GET /course_students/new
  def new
    @course_student = @course.course_students.build
    @path = [@course, @course_student]
  end

  # GET /course_students/1/edit
  def edit
     @path = @course_student
  end

  # POST /course_students
  # POST /course_students.json
  def create
    @course_student = CourseStudent.new(course_student_params)

    respond_to do |format|
      if @course_student.save
        format.html { redirect_to @course_student, notice: 'Course student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course_student }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_students/1
  # PATCH/PUT /course_students/1.json
  def update
    respond_to do |format|
      if @course_student.update(course_student_params)
        format.html { redirect_to @course_student, notice: 'Course student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_students/1
  # DELETE /course_students/1.json
  def destroy
    @course_student.destroy
    respond_to do |format|
      format.html { redirect_to course_course_students_path(@course) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_student
      @course_student = CourseStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_student_params
      params.require(:course_student).permit(:user_id, :course_id)
    end

    def load_course

     if params[:course_id].nil?
      @course = @course_student.course
     else
      @course = Course.find(params[:course_id])
     end

    end
end
