class Barracks

  attr_reader :gold, :food, :lumber
  attr_accessor :hp

  def initialize(gold=1000, food=80, hp=500, lumber=500)
    @gold = gold
    @food = food
    @hp = hp
    @lumber = lumber
  end

  def can_train_footman?
    if gold >= 135 && food >=2
      true
    else
      false
    end
  end

  def train_footman
    if can_train_footman?
      @gold = gold - 135
      @food = food - 2
      Footman.new
    else
      nil
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >=5
      true
    else
      false
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold = gold - 90
      @food = food - 5
      Peasant.new
    else
      nil
    end
  end

  # def attack!(enemy)
  #   enemy.damage(@ap)
  # end

  def damage(ap)
    @hp -= ap
  end

end


#Check test_01 again...