
def encount
	enemy=$pokemons.shuffle[0]
	puts "あ！やせいの #{enemy} が あらわれた！"
end

def select_monster
	print "どのポケモンを 出す？: "
	@name = gets.chop
	if $pokemons.include?(@name)
		puts "ゆけっ #{@name}!"
		puts "#{@name}「#{@name}!」"
		print "push Enter..."
		wait = gets
		puts "\n------------------------\n\n"
	else
		puts "そんな ポケモンは しらない！"
		select_mon
	end
end

def battle_menu
	puts "#{@name} は どうする？\n
	たたかう\n
	どうぐ\n
	いれかえ\n
	にげる"
	@command = gets.chop
	puts @command
end



def jump_out
	puts "#{@name}、かわせ!"
end
def escape
	puts "もどれ、#{@name}"
end