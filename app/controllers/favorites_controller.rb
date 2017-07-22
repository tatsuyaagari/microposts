class FavoritesController < ApplicationController

  # お気に入りに追加する場合 → Favorite
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_path
  end

  # お気に入りを削除する場合 → Unfavorite
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りに削除しました。'
    redirect_to root_path
  end

end