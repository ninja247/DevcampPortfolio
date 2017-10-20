class PortfoliosController < ApplicationController

def index
  @portfolio_items = Portfolio.all
end

def new
  @portfolio_item = Portfolio.new
  3.times { @portfolio_item.technologies.build }
end

def create
    @portfolio_item = Portfolio.new(portfolio_params)



    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

def edit
  @portfolio_item = Portfolio.find(params[:id])
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
      format.html { redirect_to portfolios_url, notice: 'post was removed ac' }
    end
  end

  private portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body,
      technologies_attributes: [:name])

  end

end





