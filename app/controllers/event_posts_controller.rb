class EventPostsController < ApplicationController
  before_action :find_event_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @event_post = EventPost.new
  end

  def create
    @event_post = EventPost.new(post_params)

    if @event_post.save
      redirect_to @event_post
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @event_post.update(post_params)
      redirect_to @event_post
    else
      render 'edit'
    end
  end

  def destroy
    @event_post.destroy
    redirect_to root_path
  end

  private

  def find_event_post
    @event_post = EventPost.find(params[:id])
  end

  def post_params
    params.required(:event_post).permit(:title, :address, :city, :state, :zip_code, :description, :event_contact_number, :event_contact_email_address, :event_link)
  end
end
