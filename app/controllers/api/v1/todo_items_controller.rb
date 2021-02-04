class Api::V1::TodoItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo_item, only: [:show, :edit, :update, :destroy]
  def index
    @todo_items = current_user.todo_items.all
  end

  def show
  end
  def create
  end
  def update
  end
  def destroy
  end

  private

    def set_todo_item
      @todo_item = TodoItem.find(params[:id])
    end

    def authorized?
      @todo_item.user == current_user
    end

    # This method checks to see if the request is authorized by calling our authorized? private method. 
    # If the request is not authorized, we return our unauthorized.json.jbuilder view. 
    # We also pass a status of 401. It's our responsibly to return the correct HTTP status code when building our API.
    def handle_unauthorized
      unless authorized?
        respond_to do |format|
          format.json { render :unauthorized, status: 401 }
        end
      end
    end
end
