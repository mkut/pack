require './booster/MMA.rb'
require './booster/RTR.rb'
require './cube/MOCube.rb'
require './draftpacks.rb'

class BoosterDraftMode
	def initialize(args)
		@gens = Array.new
		args.each { |argv|
			case argv
			when /^--player=([1-9][0-9]*)$/
				@player = $1.to_i
			else
				gen = generator(argv)
				@gens << gen if gen
			end
		}
	end

	def generator(key)
		case key
		when 'MMA'
			MMA.new
		when 'RTR'
			RTR.new
		else
			puts "[WARNING]set `#{key}' is not found."
			nil
		end
	end

	def run
		p BoosterDraftPacks.new(@gens, @player).generate
	end
end

class CubeDraftMode
	def initialize(args)
		args.each { |argv|
			case argv
			when /^--player=([1-9][0-9]*)$/
				@player = $1.to_i
			when /^--pack=([1-9][0-9]*)$/
				@pack = $1.to_i
			when /^--cube=(.+)$/
				@gen = generator($1)
			else
				p_err
			end
		}
	end

	def generator(key)
		case key
		when 'MO'
			MOCube.new
		else
			puts "[WARNING]set `#{key}' is not found."
			nil
		end
	end

	def p_err
		puts "USAGE: pack <command> [<options>]"
		puts "EXAMPLE: pack booster MMA MMA MMA --player=8"
		puts "         pack cube --cube=MO --player=8 --pack=3"
		puts ""
		puts "commands are:"
		puts "   booster   Booster draft mode"
		puts "   cube      Cube draft mode"
		puts ""
		puts "`pack help <command>' for more informations[TODO]"
		exit 1
	end

	def run
		p CubeDraftPacks.new(@gen, @pack, @player).generate
	end
end

class PackGenerator
	def initialize(args)
		case args[0]
			when 'booster'
				@mode = BoosterDraftMode.new(args[1..-1])
			when 'cube'
				@mode = CubeDraftMode.new(args[1..-1])
			else
				p_err
			end
	end

	def generator(key)
		case key
		when 'MMA'
			MMA.new
		when 'RTR'
			RTR.new
		when 'MOCube'
			MOCube.new
		else
			puts "[WARNING]set `#{key}' is not found."
			nil
		end
	end

	def p_err
		puts "USAGE: pack <command> [<options>]"
		puts "EXAMPLE: pack booster MMA MMA MMA --player=8"
		puts "         pack cube --cube=MO --player=8 --pack=3"
		puts ""
		puts "commands are:"
		puts "   booster   Booster draft mode"
		puts "   cube      Cube draft mode"
		puts ""
		puts "`pack help <command>' for more informations[TODO]"
		exit 1
	end

	def run
		@mode.run
	end
end

PackGenerator.new(ARGV).run
