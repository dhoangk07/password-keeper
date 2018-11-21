class KnowledgesController < ApplicationController
  before_action :find_knowledge, only: %i[edit update show destroy]
  def index
    @knowledge = Knowledge.all
  end
  
  def new
    @knowledge = current_user.knowledges.build
  end
  
  def create
    @knowledge = current_user.knowledges.build(knowledge_params)
    if @knowledge.save
      flash[:success] = "#{@knowledge.title} created successfull"
      redirect_to knowledges_path
    else
      render :new
    end
  end 
  
  def edit
  end
  
  def update
    @knowledge = Knowledge.update_atttribute(knowledge_params)
    if @knowledge.save
      flash[:success] = "#{@knowledge.title} updated successfull"
      redirect_to knowledges_path
    else
      render :edit
    end
  end
  
  def show
  end
  
  def destroy
    @knowledge.destroy
    flash[:danger] = "#{@knowledge.title} deleted successfull"
    redirect_to knowledges_path
  end
  
  private
    def set_knowledge
      @knowledge = Knowledge.find(params[:id])
    end
    
    def knowledge_params
      params.require(:knowledge).permit(:title, :content, :user_id)
    end
end
