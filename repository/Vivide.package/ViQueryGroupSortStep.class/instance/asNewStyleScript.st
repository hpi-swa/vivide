as yet unclassified
asNewStyleScript

	| convertedScript |
	Transcript showln: '[Old-style Script Conversion] Warning! Single group-sort step converted: ', self id.

	"1) Trust our template engine to derive an appropriate [:in :out | ...] format for the source code."
	convertedScript := ViScriptPart new.
	convertedScript sourceCode: '[:in :out | out addAll: in]'.
	
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
	
	"X) Retain old group-sort code."
	convertedScript setProperty: #oldCode toValue: self definition sourceCode. 
	
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