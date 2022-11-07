class PagesController < ApplicationController
  def home
    @posts = Post.all.includes(:user, :rich_text_body).order(created_at: :desc)
  end

  def about
  end

  def portfolio
  end
end
