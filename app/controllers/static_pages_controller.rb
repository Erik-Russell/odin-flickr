class StaticPagesController < ApplicationController
  def index
    key = Rails.application.credentials.flickr[:key]
    secret = Rails.application.credentials.flickr[:secret]

    @flickr = Flickr.new key, secret

    @user_id = params[:user_id]

    @photos = @flickr.people.getPublicPhotos(user_id: @user_id)
  end
end
