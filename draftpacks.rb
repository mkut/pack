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
