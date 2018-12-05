require './script_materials.rb'
require './pokemon_class'

my_partner = MyPokemon.new
enemy = EnemyPokemon.new

def chose_command
  count = 0
  loop{
    space
    print "#{$name} は どうする？: " if count >= 1
    count += 1
    @command = gets.chop
    space
    case @command
    when "たたかう"
      battle
    when "どうぐ"
      item
      redo
    when "いれかえ"
      change
      redo
    when "にげる"
      escape
    else
      "  #{$name} は どうする？"
      redo 
    end
  }
end

def battle
  message "#{$name}の こうげき!"
end

def item
  puts "どうぐ を 持っていない！"
end

def change
  puts "いれかえる ポケモン が いない！"
end

def escape
  message "...なんとか 逃げのびた！"
      exit
end