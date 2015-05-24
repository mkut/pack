# modern masters pack generator template

class ModernMastersBooster
	def initialize(mythic, rare, uncommon, common)
		@mythic = mythic
		@rare = rare
		@uncommon = uncommon
		@common = common
		@all = @mythic + @rare + @uncommon + @common
	end

	def generate
		mythic = rand(8) == 7
		a = mythic ? @mythic.shuffle[0..0] : @rare.shuffle[0..0]
		b = @uncommon.shuffle[0..2]
		c = @common.shuffle[0..9]
		d = @all.shuffle[0..0]
		a + b + c + d
	end
end
