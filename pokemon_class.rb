require './game_director.rb'

class Pokemon
  def initialize
    @hp = rand(80..120)
  end

  def hp
    # @hp = rand(80..120)
    @hp
  end

  def decrease_hp
    damage = rand(10..50)
    @hp -= damage
    return damage
  end
end


class MyPokemon < Pokemon
  def name
    $name
  end
end

class EnemyPokemon < Pokemon
  def enemy_name
    $enemy
  end
end

