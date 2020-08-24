errors
showLastException

	| d box buttons label errorText scriptText |
	d := self decoration message.
	box := Morph new
		color: Color white;
		addDropShadow;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 5;
		cellPositioning: #topLeft;
		yourself.
		
	box eventHandler: UiEventHandler new.
	Preferences mouseOverForKeyboardFocus
		ifTrue: [self connect: box eventHandler signal: #mouseLeft: to: box selector: #delete]
		ifFalse: [self connect: box eventHandler signal: #focusLost to: box selector: #delete].
	
	buttons := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 5;
		yourself.

	UiToolButton new in: [:btn |
		btn
			buttonStyle: #iconOnly;
			icon: UiSilkIcons bugIcon scaleIconToDisplay;
			balloonText: ((d hasProperty: #suspendedProcess)
				ifTrue: ['Open a debugger (not proceed-able)']
				ifFalse: ['Process already terminated. Please run script again.']);
			color: Color white;
			enabled: (d hasProperty: #suspendedProcess).
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #openDebuggerForLastException.
		buttons addMorphBack: btn].
	
	UiToolButton new in: [:btn |
		btn
			buttonStyle: #iconOnly;
			icon: UiSilkIcons pencilIcon scaleIconToDisplay;
			balloonText: 'Edit the script';
			color: Color white.
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #openScriptForLastException.
		buttons addMorphBack: btn].
	
	UiToolButton new in: [:btn |
		btn
			buttonStyle: #iconOnly;
			icon: UiSilkIcons arrowRefreshSmallIcon scaleIconToDisplay;
			balloonText: 'Try again';
			color: Color white.
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #updateResults.
		buttons addMorphBack: btn].
	
	
	errorText := '<b>', (d valueOfProperty: #description) escapeHtmlText, '</b><br>'.
	scriptText := (d valueOfProperty: #maliciousScript)
		ifNotNil: [:script | script sourceCode]
		ifNil: [''].
	scriptText := ViTextStyler new styledTextFor: scriptText asText.
	
	label := (errorText asTextFromHtml, scriptText asText) asMorph.
	label hResizing: #rigid; width: (label width min: 500 * RealEstateAgent scaleFactor).
		
	box addAllMorphs: {label. buttons}.
				
	box topLeft: d fullBounds bottomLeft + (0@5).
	box bounds: (box bounds translatedToBeWithin: RealEstateAgent maximumUsableArea).
	
	box setProperty: #indicateKeyboardFocus toValue: #never.
	box grabKeyboard.
	box openInWorld.