require './script_materials'
require './battle_system'

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
      attack
      
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
    enemy_turn
  }
end
