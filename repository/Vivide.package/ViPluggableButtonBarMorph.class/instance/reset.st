initialization
reset

	self removeAllMorphs.

	self model hasChildren ifFalse: [^ self].
	
	self addAllMorphs: ((1 to: buttonCount) collect: [:index |
		| label |
		label := Morph new
			changeTableLayout;
			color: Color transparent;
			listDirection: #topToBottom;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			cellInset: 3;
			yourself.
		(self model firstNode at: index asString, '_icon' ifAbsent: [])
			ifNotNil: [:icon |
				label addMorphBack: icon asMorph].
		(self model firstNode at: index asString, '_text' ifAbsent: ['(text missing)'])
			ifNotNil: [:text |
				label addMorphBack: (text asText addAttribute: (TextFontReference toFont: Preferences standardBalloonHelpFont)) asMorph].
			
		(PluggableButtonMorphPlus
			on: self
			getState: nil
			action: #doClickAt:)
			label: label;
			balloonText: (self model firstNode at: index asString, '_help' ifAbsent: []);
			arguments: {index};
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			yourself]).