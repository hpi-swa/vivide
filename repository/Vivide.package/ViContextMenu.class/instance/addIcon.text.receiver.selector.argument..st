construction
addIcon: aForm text: aString receiver: anObject selector: aSymbol argument: arg

	| button |
	button := UiToolButton new
		color: (Color gray: 0.85);
		buttonStyle: (aForm ifNil: [#textBesideIcon] ifNotNil: [#iconOnly]);
		balloonText: aString;
		text: aString;
		icon: (aForm ifNotNil: [:f | f scaledToDisplay]).
	arg
		ifNil: [self connect: button signal: #clicked: to: anObject selector: aSymbol]
		ifNotNil: [self connect: button signal: #clicked: to: anObject selector: aSymbol pattern: {#=. arg}].
	self closeOnAction ifTrue: [self connect: button signal: #clicked: toSelector: #delete].
	self addMorphBack: button.