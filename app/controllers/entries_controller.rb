class EntriesController < ApplicationController
  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @entries = Entry.where(user_id: session[:user_id])
  end

  def new
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.update(user_id: session[:user_id])
    @entry.save
    redirect_to @entry
  end

  def entry_params
    params.require(:entry).permit(:title, :text, :emoji)
  end
end
