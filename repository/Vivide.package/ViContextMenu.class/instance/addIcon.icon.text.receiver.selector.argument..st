construction
addIcon: aForm icon: anotherForm text: aString receiver: anObject selector: aSymbol argument: arg

	| button |
	button := ViNotificationToolButton new
		color: (Color gray: 0.85);
		buttonStyle: (aForm ifNil: [#textBesideIcon] ifNotNil: [#iconOnly]);
		balloonText: aString;
		icon: aForm;
		setIcon: anotherForm.
	
	arg
		ifNil: [self connect: button signal: #clicked: to: anObject selector: aSymbol]
		ifNotNil: [self connect: button signal: #clicked: to: anObject selector: aSymbol pattern: {#=. arg}].
		
	self closeOnAction ifTrue: [self connect: button signal: #clicked: toSelector: #delete].
	
	self addMorphBack: button.