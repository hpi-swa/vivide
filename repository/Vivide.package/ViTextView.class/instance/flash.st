as yet unclassified
flash

	"Give user feedback."
	self world notNil ifTrue: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: UiSilkIcons tickIcon].