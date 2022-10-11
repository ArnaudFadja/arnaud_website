class ArticlesController < ApplicationController
  #http_basic_authenticate_with name: "arnaud", password: "secret", except: [:index, :show]
  #before_action :set_article, only: [:show, :edit, :update, :new, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @protagonist = Protagonist.all[0]
    #Article.save_all
    #Article.find_each(&:save)
    #User.set_roles
    #@journal_articles = Article.categorized("journal")
    #@chapter_articles = Article.categorized("chapter")
    #@conference_articles = Article.categorized("conference")
    #@workshop_articles = Article.categorized("workshop")

  end
  def show
    @article = Article.friendly.find(params[:id])
    #@article = Article.find(params[:id])
    #authorize @article
  end
  def new
    @article = Article.new
    authorize @article
  end

  def edit
    @article = Article.friendly.find(params[:id])
    authorize @article
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    authorize @article
    @article.paper.attach(params[:paper])
    
    if @article.save
      binding.pry
      redirect_to @article
    else
      render 'new'
    end
  end

    def update
      @article = Article.friendly.find(params[:id])
      authorize @article
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

  def destroy
    @article = Article.friendly.find(params[:id])
    authorize @article
    @article.paper.purge
    @article.destroy
    redirect_to articles_path
  end

  def addAuthor
    @article = Article.find(params[:article][:article_id])
    authorize @article
    @author = Author.find(params[:article][:author_id])
    if not @article.authors.exists?(params[:article][:author_id])
        @article.authors << @author
    end
    #@article.authors << @author
    #render plain: @author.inspect
    #render plain: @article.inspect
    #render plain: params[:article].inspect
    #render 'index'
    redirect_to articles_path
  end

  def removeAuthor
    @article = Article.find(params[:article][:article_id])
    authorize @article
    @author = Author.find(params[:article][:author_id])
    @article.authors.delete(@author)
      #render plain: @author.inspect
    #render plain: @article.inspect
    #render plain: params[:article].inspect
    redirect_to articles_path
      #render 'index'
  end
  def listUsers
    @users = User.all
  end

  def removeUser
    #@user = User.find(params[:user][:user_id])
    @user = User.find(params[:user_id])
    #authorize @user
    @user.destroy
    redirect_to listUsers_articles_path
  end

  def setRole
    User.update_role(params[:role][:user_id], params[:role][:role_id], "add")
    redirect_to listUsers_articles_path
  end

  def removeRole
    User.update_role(params[:role][:user_id], params[:role][:role_id], "remove")
    redirect_to listUsers_articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :category,  :content, :date, :conferenceName, :paper, :paperUrl)
  end
end

# <!-- 
#       <% if article.paper.attached? %>
#         <%= link_to( "[.pdf]", article.paper, class:"text-danger") %>
#       <%end %>
#       -->