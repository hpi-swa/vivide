as yet unclassified
asNewStyleScript
	"Convert this old-style query into a new-style script."
	
	| convertedScript |
	"1) Trust our template engine to derive an appropriate [:in :out | ...] format for the source code."
	convertedScript := ViScriptPart new.
	convertedScript sourceCode: (ViScriptEditor
		applyTemplate: #standard
		toSourceCode: ('[:ungroupedObject | \{ {1} value: ungroupedObject . ungroupedObject \} asTuples]'
		format: {self definition sourceCode})).
	
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
	
	"X) Use default #groups script next to group and sort. Skip old-style group-sort step."
	convertedScript next: [#groupsMinimal] asScript.
	convertedScript next adoptOrganization: convertedScript organization.
	
	"4) Convert the next step, too."
	self next ifNotNil: [:step |
		| nextOldStyleScript |
		step isScript ifTrue: [^ convertedScript].
		
		nextOldStyleScript := step isGroupSortStep
			ifTrue: [step next]
			ifFalse: [step].
		
		nextOldStyleScript ifNotNil: [:n |
			convertedScript next "#groups" next: n asNewStyleScript.
			convertedScript next "#groups" adoptOrganization: convertedScript organization]].
	
	^ convertedScript