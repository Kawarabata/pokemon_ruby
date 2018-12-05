require './script_materials'
require './pokemon_class'
require './battle_commands'

def choose_command
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
      puts "どうぐ を 持っていない！"
      redo
    when "いれかえ"
      puts "いれかえる ポケモン が いない！"
      redo
    when "にげる"
      message "...なんとか 逃げのびた！"
      exit
    else
      "  #{$name} は どうする？"
      redo
    end
  }
end