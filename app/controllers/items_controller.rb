class ItemsController < ApplicationController
  def index
    #ユーザーリストを表示するため
    @users = User.all
  end
end
