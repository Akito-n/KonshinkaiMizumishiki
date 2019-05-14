class TypesController < ApplicationController
  def index
  end

  def new
    @hunter = Hunter.new
  end

  def create
    @hunter = Hunter.new(hunter_params)
    result = mizumi(@hunter)
    @type = Type.find_by(name: result)
    @hunter.type_id = @type.id

    if @hunter.type_id != nil && @hunter.save
      redirect_to @hunter
    end
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def hunter_params
    params.require(:hunter).permit(
      :name,
      :power,
      :speed,
      :interigence,
      :technique,
    )
  end

  def mizumi(c)
    status = c.status

    if status.map {|k, v| v == 0}.include?(true)
      0
    elsif c.technique >= 60 && c.speed >= 60 && c.interigence < c.power
      2
    elsif c.interigence + c.technique >= 100 && c.speed <= 60
      3
    elsif status.sort {|(k1, v1), (k2, v2)| v2 <=> v1}.first.first == :technique && status.sort {|(k1, v1), (k2, v2)| v2 <=> v1}.last.first == :power
      4
    elsif c.interigence >= 100 && c.speed + c.technique + c.power < c.interigence * 3
      5
    elsif c.power >= 100 && c.speed + c.technique > c.power
      1
    else
      6
    end
  end
end
