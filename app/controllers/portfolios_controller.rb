class PortfoliosController < ApplicationController

# we need a :set_portfolio_item method before we can use this 
before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit]}, site_admin: :all

  
  def index
    @portfolio_items = Portfolio.by_position
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
    3.times { @portfolio_item.technologies.build }
  end
  
  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      #redirected to a private variable
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end



  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    #perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    #destroy/delete the record
    @portfolio_item.destroy

    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'portfolio was removed' }
    end
  end


  private
  
  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body,
      :main_image,
      :thumb_image,
      technologies_attributes: [:name]
    )
  end



 def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

#edit doesn't have admin logic


end





