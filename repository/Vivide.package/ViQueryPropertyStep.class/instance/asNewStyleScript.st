as yet unclassified
asNewStyleScript
	"Convert this old-style query into a new-style script."
	
	| convertedScript |
	"1) Trust our template engine to derive an appropriate [:in :out | ...] format for the source code."
	convertedScript := ViScriptPart new.
	convertedScript sourceCode: (ViScriptEditor
		applyTemplate: #properties
		toSourceCode: ('[:textOrObject | textOrObject isText ifTrue: [ \{ #text -> textOrObject \} ] ifFalse: [ {1} value: textOrObject]]'
		format: {ViScriptEditor wrapExtractionIntoArray: self definition sourceCode})).
	convertedScript isProperty: true.
	
	"2) Copy all meta data."
	convertedScript
		id: self id;
		properties: self properties;
		icon: self icon;
		label: self label.
	self assert: convertedScript id = self id.
	convertedScript definition
		"id: self definition id;"
		properties: self definition properties.
		
	"3) Move #inputKind and #outputKind from definition up to step."
	convertedScript
		setProperty: #inputKind toValue: self definition inputKind;
		setProperty: #outputKind toValue: self definition outputKind.
	
	"4) Convert the next step, too."
	self next ifNotNil: [:step |
		step isScript ifTrue: [^ convertedScript].
		
		convertedScript next: step asNewStyleScript.
		convertedScript next adoptOrganization: convertedScript organization].
	
	^ convertedScript