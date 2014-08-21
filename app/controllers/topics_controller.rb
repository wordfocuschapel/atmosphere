class TopicsController < ApplicationController
#  before_action :authorize_admin!, except: [:index, :show]
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag] 
      @topics = Topic.tagged_with(params[:tag])  
    else
      @topics = Topic.all
    end
  end

  def new
    @topic = Topic.new
#    @topic.save
  end

  def show
#    @topic = Topic.find(params[:id])
  end

  def edit
#    @topic = Topic.find(params[:id])
  end

  def create 
    @topic = Topic.new(topic_params)
    
    if @topic.save
      flash[:notice] = "Topic has been created."
      redirect_to @topic
    else
      flash[:alert] = "Topic not created."
      render "new"
    end
  end  

  def update
#    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      flash[:notice] = "Topic has been updated."
      redirect_to @topic
   else
     flash[:alert] = "Topic has not been updated" 
     render "edit"   
   end
  end

  def destroy
#    @topic = Topic.find(params[:id])
    @topic.destroy

    flash[:notice] = "Topic has been deleted."

    redirect_to topics_path
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The topic you were looking" +
                      " for could not be found."
      redirect_to topics_path
    end 

    def topic_params
      params.require(:topic).permit(:title, :tag_list)
    end

    def authorize_admin!
      require_signin!
     
      unless current_user.admin?
        flash[:alert] = "You must be an admin to do that."
        redirect_to topics_path
      end
    end
end 
