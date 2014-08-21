class TopicsController < ApplicationController
before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all
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
      params.require(:topic).permit(:title)
    end
end
