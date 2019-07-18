class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new 
  end 
  
  def create
    Student.create()
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end
  
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end 
  

end
