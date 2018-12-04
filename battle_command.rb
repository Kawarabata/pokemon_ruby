def chose_command
  count = 0
  loop{
    space
    puts "  #{@name} は どうする？" if count >= 1
    count += 1
    @command = gets.chop
    space
    case @command
    when "どうぐ"
      puts "どうぐ を 持っていない！"
      redo
    when "いれかえ"
      puts "いれかえる ポケモン が いない！"
      redo
    when "にげる"
      puts "なんとか 逃げのびた！"
      exit
    else
      "  #{@name} は どうする？"
      redo 
    end
  }
end
