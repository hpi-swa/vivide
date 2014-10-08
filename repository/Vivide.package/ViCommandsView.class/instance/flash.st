actions
flash

	"Give user feedback."
	self world notNil ifNotNil: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: UiSilkIcons cogIcon].