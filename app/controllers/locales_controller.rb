class LocalesController < ApplicationController
  def index
    @ip = request.remote_ip
  end
  
  def create
    @locale = Locale.new(locale_params)
    if @locale.save
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Please ensure you've entered a valid, 5-digit ZIP code."
      redirect_to(:action => 'index')
    end
  end
  
  def locale_params 
    params.require(:locale).permit(:zip, :ip)
  end
end
