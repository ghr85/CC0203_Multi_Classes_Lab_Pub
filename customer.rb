class Customer

  attr_reader :name_string, :wallet_int, :age_int, :drunkenness_level_int

  def initialize(name_string, wallet_int, age_int, drunkenness_level_int)
    @name_string = name_string
    @wallet_int = wallet_int
    @age_int = age_int
    @drunkenness_level_int = drunkenness_level_int
  end


  def buy_drink(pub, drink_object)
    if @age_int <= 18
      return "You're not old enough! GET OUT!"
    else
      if @wallet_int < drink_object.price_int
        return "Get a job you bum."
      else
        if @drunkenness_level_int <= 100
          pub.has_drink(drink_object)
          @wallet_int -= drink_object.price_int
          @drunkenness_level_int += drink_object.alcohol_level_int
        else
          return "No more drinks for you, you drunken bum!"
        end
      end
    end
  end

  def buy_food(pub, food_object)
    if @wallet_int > food_object.price_int
      @wallet_int -= food_object.price_int
      @drunkenness_level_int -= food_object.rejuvination_level_int
      return
    else
      return "Pot noodles for you pal."
    end
  end


end
