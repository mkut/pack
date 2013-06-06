# Default booster pack generator

class DefaultBooster
	def initialize(mythic, rare, uncommon, common, basicland)
		@mythic = mythic
		@rare = rare
		@uncommon = uncommon
		@common = common
		@basicland = basicland
		@all = @mythic + @rare + @uncommon + @common + @basicland
	end

	def generate
		mythic = rand(8) == 7
		foil = rand(4) == 3
		a = mythic ? @mythic.shuffle[0..0] : @rare.shuffle[0..0]
		b = @uncommon.shuffle[0..2]
		c = foil ? @common.shuffle[0..8] : @common.shuffle[0..9]
		d = @basicland.shuffle[0..0]
		e = foil ? @all.shuffle[0..0] : []
		a + b + c + d + e
	end
end
