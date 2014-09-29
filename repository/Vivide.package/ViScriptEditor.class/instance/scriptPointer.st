as yet unclassified
scriptPointer
	"Indicate which block is currently visible."
	
	^ scriptPointer ifNil: [1 to: self script size]