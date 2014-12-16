as yet unclassified
setFlags: someSymbols
	"Set some flags (only!). Specs need to be present."

	self flagSpecs do: [:spec |
		self
			updateFlag: spec third
			description: spec second
			value: (someSymbols includes: spec third)].