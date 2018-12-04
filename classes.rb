class Pokemon
  def initialize(name)
    @name = name
    puts "ゆけっ #{@name}!"
  end
  def jump_out
    puts "#{@name}、かわせ!"
  end
  def escape
    puts "もどれ、#{@name}"
  end
end
class Pikachu < Pokemon
  def attack1
    puts "#{@name}、10万ボルト!"
  end
  def attack2
    puts "#{@name}、アイアンテールだ！"
  end
end