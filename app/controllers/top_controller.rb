class TopController < ApplicationController
  def top
    @posts = Post.select(:id, :event_date, :shop_name, :menu , :comment).order(created_at: "DESC").limit(5)
  end
end
