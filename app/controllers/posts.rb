SampleBlog::App.controllers :posts do
  get :index, provides: [:html, :json] do
    @posts = Post.all(order: 'created_at DESC')
    render 'posts/index'
  end

  get :show, with: :id, provides: [:html, :json] do
    @post = Post.find_by_id(params[:id])
    render 'posts/show'
  end
end
