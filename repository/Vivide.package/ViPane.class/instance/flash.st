actions
flash

	"Give user feedback."
	(self world notNil and: [self currentQuery notNil]) ifTrue: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: (self currentQuery nextIcon ifNil: [UiSilkIcons arrowRefreshIcon])].