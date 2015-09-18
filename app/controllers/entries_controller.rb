class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]
  respond_to :json

  def index
    respond_with Entry.all
  end

  def show
    respond_with @entry
  end

  def create
    respond_with Entry.create(entry_params)
  end

  def update
    respond_with @entry.update(entry_params)
  end

  def destroy
    respond_with @entry.destroy
  end

  private
  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:name, :winner)
  end

end
