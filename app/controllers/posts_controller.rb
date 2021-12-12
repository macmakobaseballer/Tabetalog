class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to '/'
  end

  def index
    @posts = Post.all
  end

  def edit
  
  end

  #StrongParametersの実装
  # 外部から渡されるパラメータをそのまま信用せず、
  # 明示的に許可したキーのみ利用する
  def post_params
    params.require(:post).permit( :event_date, :shop_name, :menu, :comment) 
  end

end
