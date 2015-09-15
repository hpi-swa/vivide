initialization
reset

	self removeAllMorphs.

	self model hasChildren ifFalse: [^ self].
	
	self addAllMorphs: ((1 to: buttonCount) collect: [:index |
		(PluggableButtonMorphPlus
			on: self
			getState: nil
			action: #doClickAt:)
			label: (self model firstNode at: index asString, '_text' ifAbsent: ['(text missing)']);
			balloonText: (self model firstNode at: index asString, '_help' ifAbsent: []);
			arguments: {index};
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			yourself]).