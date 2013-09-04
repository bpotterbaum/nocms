class PagesController < ApplicationController

  def new
  end

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'this worked.' }
        format.js   {}
        format.json { render json: @page, status: :created }
      else
        format.html { render action: 'new',notice: 'did not work' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @page = Page.find(params[:id])

  end

  def index
    @page_latest = Page.last
  end

  private
    def page_params
      params.permit(:name, :html)
    end

end

