require './booster/default.rb'

class AER < DefaultBooster
	def initialize
		mythic = ["Herald of Anguish", "Exquisite Archangel", "Lightning Runner", "Indomitable Creativity", "Mechanized Production", "Aetherwind Basker", "Gonti's Aether Heart", "Planar Bridge", "Paradox Engine", "Tezzeret the Schemer", "Heart of Kiran", "Tezzeret, Master of Metal", "Ajani, Valiant Protector", "Ajani Unyielding"]
                rare = ["Midnight Entourage", "Kari Zev's Expertise", "Kari Zev, Skyship Raider", "Tezzeret's Betrayal", "Ajani's Aid", "Aethersphere Harvester", "Heroic Intervention", "Hope of Ghirapur", "Lifecrafter's Bestiary", "Solemn Recruit", "Baral, Chief of Compliance", "Baral's Expertise", "Aethertide Whale", "Call for Unity", "Walking Ballista", "Secret Salvage", "Yahenni, Undying Partisan", "Glint-Sleeve Siphoner", "Aethergeode Miner", "Aid from the Cowl", "Rishkar's Expertise", "Spire of Industry", "Inspiring Statuary", "Release the Gremlins", "Rishkar, Peema Renegade", "Merchant's Dockhand", "Freejam Regent", "Metallic Mimic", "Greenwheel Liberator", "Greenbelt Rampager", "Sram's Expertise", "Sram, Senior Edificer", "Whir of Invention", "Peacekeeper Colossus", "Quicksmith Spy", "Oath of Ajani", "Consulate Crackdown", "Dark Intimations", "Battle at the Bridge", "Disallow", "Pia's Revolution", "Quicksmith Rebel", "Scrap Trawler", "Yahenni's Expertise"]
                uncommon = ["Daredevil Dragster", "Crackdown Construct", "Barricade Breaker", "Sly Requisitioner", "Perilous Predicament", "Servo Schematic", "Ironclad Revolutionary", "Gonti's Machinations", "Foundry Hornet", "Scrapper Champion", "Reckless Racer", "Invigorated Rampage", "Gremlin Infestation", "Enraged Giant", "Thopter Arrest", "Restoration Specialist", "Felidar Guardian", "Deft Dismissal", "Deadeye Harpooner", "Wind-Kin Raiders", "Ridgescale Tusker", "Shielded Aether Thief", "Peema Aether-Seer", "Salvage Scuttler", "Narnam Renegade", "Illusionist's Stratagem", "Monstrous Onslaught", "Maulfist Revolutionary", "Lifecrafter's Gift", "Airdrop Aeronauts", "Lifecraft Awakening", "Aerial Modification", "Efficient Construction", "Maverick Thopterist", "Insurgent Thopterist", "it", "Ravenous Intruder", "Metallic Rebuke", "Tezzeret's Simulacrum", "Ajani's Comrade", "Treasure Keeper", "Hidden Herbalists", "Gifted Aetherborn", "Spire Patrol", "Renegade Wheelsmith", "Cogwork Assembler", "Hidden Stockpile", "Vengeful Rebel", "Weldfast Engineer", "Outland Boar", "Skyship Plunderer", "Renegade Rallier", "Rogue Refiner", "Tezzeret's Touch", "Reverse Engineer", "Hungry Flames", "Ornithopter", "Pacification Array", "Untethered Express", "Siege Modification", "Winding Constrictor", "Aeronaut Admiral", "Fatal Push", "Consulate Dreadnought", "Trophy Mage"]
                common = ["Filigree Crawler", "Consulate Turret", "Irontread Crusher", "Mobile Garrison", "Night Market Guard", "Augmenting Automaton", "Resourceful Return", "Prizefighter Construct", "Renegade's Getaway", "Reservoir Walker", "Aegis Automaton", "Verdant Automaton", "Watchful Automaton", "Fourth Bridge Prowler", "Welder Automaton", "Fen Hauler", "Wrangle", "Precise Strike", "Lathnu Sailback", "Frontline Rebel", "Embraal Gear Smasher", "Destructive Tampering", "Chandra's Revolution", "Ghirapur Osprey", "Defiant Salvager", "Daring Demolition", "Cruel Finality", "Alley Stranger", "Dawnfeather Eagle", "Unbridled Growth", "Conviction", "Scrounging Bandar", "Take Into Custody", "Caught in the Brights", "Prey Upon", "Bastion Enforcer", "Negate", "Natural Obsolescence", "Leave in the Dust", "Audacious Infiltrator", "Ice Over", "Alley Evasion", "Hinterland Drake", "Dispersal Technician", "Bastion Inventor", "Lifecraft Cavalry", "Highspire Infusion", "Aetherstream Leopard", "Aether Herder", "Aether Chaser", "Aether Poisoner", "Aether Swooper", "Aether Inspector", "Universal Solvent", "Submerged Boneyard", "Pendulum of Patterns", "Tranquil Expanse", "Inspiring Roar", "Implement of Examination", "Implement of Malice", "Implement of Combustion", "Implement of Ferocity", "Implement of Improvement", "Shock", "Renegade Map", "Countless Gears Renegade", "Druid of the Cowl", "Aegis Automaton", "Foundry Assembler", "Sweatworks Brawler", "Shipwreck Moray", "Silkweaver Elite", "Night Market Aeronaut", "Decommision"]
                basicland = [
			'Plains',
			'Plains',
			'Plains',
			'Plains',
			'Plains',
			'Island',
			'Island',
			'Island',
			'Island',
			'Island',
			'Swamp',
			'Swamp',
			'Swamp',
			'Swamp',
			'Swamp',
			'Mountain',
			'Mountain',
			'Mountain',
			'Mountain',
			'Mountain',
			'Forest',
			'Forest',
			'Forest',
			'Forest',
			'Forest',
			]
		super(mythic, rare, uncommon, common, basicland)
	end
end
