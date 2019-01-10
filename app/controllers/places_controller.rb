class PlacesController < ApplicationController
    before_action :authenticate_user
    
    
  def playlist
      @places=Place.all
  end
  
  def content
    
    @place=Place.find_by(id: params[:id])
    @current_user.place_id=@place.id
    @current_user.save
    @post = Post.new
    @posts=Post.where(place_id: @current_user.place_id).order(created_at: :desc)
    
  end
  
  def create
    
    @post = Post.new(
      content: params[:content],
      user_id: @current_user.id,
      place_id: @current_user.places.id
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/places/#{@post.place_id}")
    else
      render("places/content")
    end
  end
  
  def index
   if !params[:artist_name].empty?
     @artists = RSpotify::Artist.search(params[:artist_name])
   else
     redirect_to root_path
   end
  end
  def show
      @artist = RSpotify::Artist.find(params[:id])
  end
  
 
end
