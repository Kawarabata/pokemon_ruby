require './script_materials.rb'
def chose_command
  count = 0
  loop{
    space
    print "#{@name} は どうする？: " if count >= 1
    count += 1
    @command = gets.chop
    space
    case @command
    when "たたかう"
      message "#{@name}の こうげき!"
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
      "  #{@name} は どうする？"
      redo 
    end
  }
end
