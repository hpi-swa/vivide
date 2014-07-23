as yet unclassified
refreshModel

	self clear.
	
	self world ifNotNil: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: UiSilkIcons arrowRefreshSmallIcon].