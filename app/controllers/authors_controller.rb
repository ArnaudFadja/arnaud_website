class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def new
    @author = Author.new
    authorize @author
  end

  def edit
    @author = Author.find(params[:id])
    authorize @author
  end

  def create
    #render plain: params[:Author].inspect
    @author = Author.new(author_params)
    authorize @author
    if @author.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @author = Author.find(params[:id])
    authorize @author
    if @author.update(author_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    authorize @author
    @author.destroy
    redirect_to articles_path
  end


  private
    def author_params
      params.require(:author).permit(:name, :email)
    end
  
  
    # def new
    #   @Author = Author.find(params[:Author_id])
    #   @author = @Author.authors.new
    # end
    
    # def create
    #   @Author = Author.find(params[:Author_id])
    #   @author = @Author.authors.new(author_params)
    #   @author.save
    #   @Author.authors << @author
    #   redirect_to Authors_path
    # end
    # def destroy
    #   @Author = Author.find(params[:id])
    #   @author = @Author.authors.find(params[:id])
    #   @author.destroy
    #   redirect_to Author_path(@Author)
    # end
    

end
