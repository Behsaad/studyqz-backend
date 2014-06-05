class CourseInvitationsController < ApplicationController
  before_action :set_course_invitation, only: [:show, :edit, :update, :destroy]
  before_filter :load_course
  # GET /course_invitations
  # GET /course_invitations.json
  def index
    @course_invitations = CourseInvitation.all
  end

  # GET /course_invitations/1
  # GET /course_invitations/1.json
  def show
  end

  # GET /course_invitations/new
  def new
    @course_invitation = @course.course_invitations.build
    @path = [@course, @course_invitation]
  end

  # GET /course_invitations/1/edit
  def edit
    @path = @course_invitation
  end

  # POST /course_invitations
  # POST /course_invitations.json
  def create
    @course_invitation = CourseInvitation.new(course_invitation_params)

    respond_to do |format|
      if @course_invitation.save
        format.html { redirect_to @course_invitation, notice: 'Course invitation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course_invitation }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_invitations/1
  # PATCH/PUT /course_invitations/1.json
  def update
    respond_to do |format|
      if @course_invitation.update(course_invitation_params)
        format.html { redirect_to @course_invitation, notice: 'Course invitation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_invitations/1
  # DELETE /course_invitations/1.json
  def destroy
    @course_invitation.destroy
    respond_to do |format|
      format.html { redirect_to course_invitations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_invitation
      @course_invitation = CourseInvitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_invitation_params
      params.require(:course_invitation).permit(:invitedbyuser_id, :inviteduser_id, :course_id)
    end
    
    def load_course

     if params[:course_id].nil?
      @course = @course_invitation.course
     else
      @course = Course.find(params[:course_id])
     end

    end
end
