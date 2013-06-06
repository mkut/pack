require './booster/MMA.rb'
require './booster/RTR.rb'
require './draftpacks.rb'

class OptionReader
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
		if @gens.empty?
			puts "USAGE: pack set1 set2 ... setn [options]"
			puts "EXAMPLE: pack MMA MMA MMA --player=8"
			puts "`pack help' for more informations"
		else
			draft = @player ? BoosterDraftPacks.new(@gens, @player) : BoosterDraftPacks.new(@gens)
			p draft.generate
		end
	end
end

OptionReader.new(ARGV).run
