comparing
= other
	"label and icon are irrelevant"

	^ self == other or: [(self species = other species
		and: [self id = other id])
		and: [self definition = other definition]]