require './pokemon_list'

class Pokemon
  attr_accessor :name

  def initialize
    print "どのポケモンを出す？: "
    @name = gets.chop
    if $pokemons.include?(@name)
      puts "ゆけっ #{@name}!"
      puts "#{@name}「#{@name}!」"
    else
      puts "そんなポケモンは知らない！"
      initialize
    end
  end
  def battle_menu
    puts "#{name}はどうする？"
    puts "  たたかう"
    puts "  どうぐ"
    puts "  いれかえ"
    puts "  にげる"
    @command = gets.chop
    puts @command
  end
  def jump_out
    puts "#{@name}、かわせ!"
  end
  def escape
    puts "もどれ、#{@name}"
  end
end

battle_pokemon1=Pokemon.new
wait = gets
battle_pokemon1.battle_menu