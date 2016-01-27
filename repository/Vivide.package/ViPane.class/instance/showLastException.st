errors
showLastException

	| box buttons label errorText scriptText |
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
			icon: UiSilkIcons bugIcon;
			balloonText: ((self errorBtn hasProperty: #suspendedProcess)
				ifTrue: ['Open a debugger (not proceed-able)']
				ifFalse: ['Process already terminated. Please run script again.']);
			color: Color white;
			enabled: (self errorBtn hasProperty: #suspendedProcess).
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #openDebuggerForLastException.
		buttons addMorphBack: btn].
	
	UiToolButton new in: [:btn |
		btn
			buttonStyle: #iconOnly;
			icon: UiSilkIcons pencilIcon;
			balloonText: 'Edit the script';
			color: Color white.
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #openScriptForLastException.
		buttons addMorphBack: btn].
	
	UiToolButton new in: [:btn |
		btn
			buttonStyle: #iconOnly;
			icon: UiSilkIcons arrowRefreshSmallIcon;
			balloonText: 'Try again';
			color: Color white.
		self connect: btn signal: #clicked: to: box selector: #delete.
		self connect: btn signal: #clicked: toSelector: #updateResults.
		buttons addMorphBack: btn].
	
	
	errorText := '<b>', (self errorBtn valueOfProperty: #description), '</b>', String cr.
	scriptText := (self errorBtn valueOfProperty: #maliciousScript)
		ifNotNil: [:script | script sourceCode]
		ifNil: [''].
	scriptText := ViTextStyler new styledTextFor: scriptText asText.
	
	label := (errorText asHtmlText, scriptText asText) asMorph.
		
	box addAllMorphs: {label. buttons}.
				
	box topLeft: self errorBtn bottomLeft + (0@5).
	box setProperty: #indicateKeyboardFocus toValue: #never.
	box grabKeyboard.
	box openInWorld.