class PagesController < ApplicationController

  def new
  end

  def create
    @page = Page.new(page_params)

    @page.save
    redirect_to @page
  end

  def show
    @page = Page.find(params[:id])
  end

  private
    def page_params
      params.require(:page).permit(:name, :html)
    end



end
