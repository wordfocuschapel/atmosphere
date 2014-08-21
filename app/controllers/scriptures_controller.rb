class ScripturesController < ApplicationController
  before_action :set_topic  
  before_action :set_scripture, only: [:show, :edit, :update, :destroy]

  def new
    @scripture = @topic.scriptures.build
  end

  def edit
  end
  
  def create
    @scripture = @topic.scriptures.build(scripture_params)
    if @scripture.save
      flash[:notice] = "Scriture has been successfully added to #{@topic}."
      redirect_to [@topic, @scripture]
    else
      flash[:alert] = "Scripture has not been added."
      render "new"
    end
  end

  def update
    if @scripture.update(scripture_params)
      flash[:notice] = "Scripture has been updated."
      redirect_to [@topic, @scripture]
    else
      flash[:alert] = "Scripture has not been updated.

      render action: "edit"
    end
  end

  def destroy
    @scripture.destroy
    flash[:notice] = "Scripture has been removed."  
    redirect_to @topic
  end

  private
  
    def scripture_params
      params.require(:scripture).permit(:chapterverse, :text)
    end

   def set_topic
     @topic = Topic.find(params[:topic_id])
   end

  def set_scripture
    @scripture = @topic.scriptures.find(params[:id])
  end
end
