# Draft Packs

class BoosterDraftPacks
	def initialize(gens, player = 8)
		@generators = gens
		@num_player = player
	end

	def generate
		@generators.map { |g|
			Array(1..@num_player).map {
				g.generate
			}
		}
	end
end

class CubeDraftPacks
	def initialize(gen, pack = 3, player = 8)
		@generator = gen
		@num_player = player
		@num_pack = pack
	end

	def generate
		@generator.generate(@num_pack * @num_player).each_slice(@num_player).to_a
	end
end
