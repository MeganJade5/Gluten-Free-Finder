class AdminController < ApplicationController
  def index
  end

  def posts
    @posts = Post.all.includes(:user)
  end

  def show_post
    @post = Post.includes(:user).find(params[:id])
  end
end