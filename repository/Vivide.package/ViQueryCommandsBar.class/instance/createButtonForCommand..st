initialization
createButtonForCommand: cmd

	| btn |
	btn := ViDraggableButton new 
		color: (Color gray: 0.85);
		"buttonStyle: ((cmd icon isNil and: [cmd label notNil]) ifTrue: [#textBesideIcon] ifFalse: [#iconOnly]);"
		buttonStyle: #textOnly;
		icon: (cmd icon ifNil: [cmd label ifNil: [ViIcons controlRecordSmallSunkenIcon] ifNotNil: [nil]]);
		balloonText: (cmd label ifNil: [cmd definition sourceCode]);
		text: cmd label;
		setProperty: #command toValue: cmd;
		"drag-drop"
		passenger: {cmd}; dragTransferType: #objects; source: self.
	self connect: btn signal: #clicked: toSelector: #activated: pattern: {#=. cmd}.
	^ btn