as yet unclassified
addHint: message buttons: someButtons closeable: boolean

	| hint closeBtn |
	hint := Morph new
		color: (Color gray: 0.9);
		changeTableLayout;
		layoutInset: 2;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	closeBtn := boolean ifFalse: [nil] ifTrue: [
		UiToolButton new
				buttonStyle: #iconOnly;
				icon: ViIcons crossSmallSunkenIcon;
				autoRaise: true;
				color: (Color gray: 0.85);
				yourself].
	closeBtn ifNotNil: [
		self connect: closeBtn signal: #clicked: toSelector: #removeHint: pattern: #(0)].
	
	hint addAllMorphs: {UiLabel new text: ('<b>', message asString, '</b>') asHtmlText},
		someButtons,
		(closeBtn ifNil: [{}] ifNotNil: [{closeBtn}]).
	
	hintBox addMorphBack: hint.
	hintBox showFull.