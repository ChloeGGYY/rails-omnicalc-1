class ZebraController < ApplicationController
  def square1
    render({:template => "game_templates/square1"})
  end

  def square2
    @the_num =params.fetch("user_number").to_f
  @the_result = @the_num ** 2
    render({:template => "game_templates/square2"})
  end

  def root1
    render({:template => "game_templates/root1"})
  end

  def root2
    @the_num =params.fetch("user_number").to_f
  @the_result = @the_num ** 0.5
    render({:template => "game_templates/root2"})
  end

  def payment1
    render({:template => "game_templates/payment1"})
  end

  def payment2
    @the_apr =params.fetch("user_apr").to_f/100
  @the_year = params.fetch("user_years").to_i
  @the_principal = params.fetch("user_pv").to_f 
  @the_payment = (@the_principal * (@the_apr/12)) / (1 - (1 + @the_apr/12)**(-12*@the_year))
    render({:template => "game_templates/payment2"})
  end

  def random1
    render({:template => "game_templates/random1"})
  end

  def random2
    @the_min =params.fetch("user_min").to_f
    @the_max = params.fetch("user_max").to_f
    @the_random = rand(@the_min..@the_max).to_f
    render({:template => "game_templates/random2"})
  end

  def home
    render({:template => "game_templates/square1"})
  end
end
