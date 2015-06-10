initialization
reset

	self removeAllMorphs.
	self model ifNil: [^ self].
	
	self addAllMorphs: ((1 to: buttonCount) collect: [:index |
		(PluggableButtonMorph
			on: self
			getState: nil
			action: #doClickAt:)
			label: (self model firstNode at: index asString, '_text' ifAbsent: ['(text missing)']);
			arguments: {index};
			yourself]).