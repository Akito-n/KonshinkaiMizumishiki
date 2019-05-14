class HuntersController < ApplicationController
  def show
    @hunter = Hunter.find(params[:id])
  end

  def index
    @search = Hunter.ransack(params[:q])
    @hunters = @search.result.includes(:type).page(params[:page]).per(20)
  end
end
