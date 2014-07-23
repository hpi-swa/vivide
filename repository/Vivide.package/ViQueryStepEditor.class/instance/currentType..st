accessing - properties
currentType: spec

	spec value first ifNotNil: [:mapType | self currentDefinition ifNotNil: [:def |
		def isRegistered & (mapType ~= def mapType) ifTrue: [
			self useNewCode.
			self
				warn: ('Code type changed from #{1} to #{2}! Definition was cloned.'
					format: {def mapType. mapType})
				for: self ui definitionEdit]].
		self currentDefinition ifNotNil: [:def | def mapType: mapType]].

	self ui typeBtn
		setProperty: #stepType toValue: spec;
		icon: spec key stepIcon;
		setIcon: spec value second;
		balloonText: spec key stepName.
		
	spec key == ViQueryReferenceStep
		ifTrue: [
			self ui definitionEdit hideFull.
			self ui referenceBox showFull]
		ifFalse: [
			self ui definitionEdit showFull.
			self ui referenceBox hideFull].
		
	spec key == ViQueryPropertyStep
		ifTrue: [self ui definitionEdit
			color: (Color gray: 0.93);
			outerBorderWidth: 0]
		ifFalse: [self ui definitionEdit
			color: Color white;
			outerBorderWidth: 1].