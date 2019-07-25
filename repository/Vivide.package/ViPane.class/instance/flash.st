actions
flash

	"Give user feedback."
	(self world notNil and: [self script notNil]) ifTrue: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: (self script nextIcon ifNil: [UiSilkIcons arrowRefreshIcon])].