class TypeCoursesController < ApplicationController
  # GET /type_courses
  # GET /type_courses.json
  def index
    @type_courses = TypeCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_courses }
    end
  end

  # GET /type_courses/1
  # GET /type_courses/1.json
  def show
    @type_course = TypeCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_course }
    end
  end

  # GET /type_courses/new
  # GET /type_courses/new.json
  def new
    @type_course = TypeCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_course }
    end
  end

  # GET /type_courses/1/edit
  def edit
    @type_course = TypeCourse.find(params[:id])
  end

  # POST /type_courses
  # POST /type_courses.json
  def create
    @type_course = TypeCourse.new(params[:type_course])

    respond_to do |format|
      if @type_course.save
        format.html { redirect_to @type_course, notice: 'Type course was successfully created.' }
        format.json { render json: @type_course, status: :created, location: @type_course }
      else
        format.html { render action: "new" }
        format.json { render json: @type_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_courses/1
  # PUT /type_courses/1.json
  def update
    @type_course = TypeCourse.find(params[:id])

    respond_to do |format|
      if @type_course.update_attributes(params[:type_course])
        format.html { redirect_to @type_course, notice: 'Type course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_courses/1
  # DELETE /type_courses/1.json
  def destroy
    @type_course = TypeCourse.find(params[:id])
    @type_course.destroy

    respond_to do |format|
      format.html { redirect_to type_courses_url }
      format.json { head :no_content }
    end
  end
end
