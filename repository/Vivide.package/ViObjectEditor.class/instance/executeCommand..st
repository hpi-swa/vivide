as yet unclassified
executeCommand: command

	command executeWith: self object.

	self world ifNotNil: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: (command icon ifNil: [UiSilkIcons arrowRefreshSmallIcon])].