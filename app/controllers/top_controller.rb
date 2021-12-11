class TopController < ApplicationController
  def top
    @posts = Post.all
  end
end
