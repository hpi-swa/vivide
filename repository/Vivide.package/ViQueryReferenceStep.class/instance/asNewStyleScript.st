as yet unclassified
asNewStyleScript
	"Convert this old-style query into a new-style script."
	
	| convertedScript |
	
	self assert: self isGroupSortStep not.
	
	"1) Trust our template engine to derive an appropriate [:in :out | ...] format for the source code."
	convertedScript := ('[{1}]' format: {self reference id printString}) asScript.
	
	"2) Copy all meta data."
	convertedScript
		id: self id;
		properties: self properties;
		icon: self icon;
		label: self label.
	self assert: convertedScript id = self id.
			
	"4) Convert the next step, too."
	self next ifNotNil: [:step |
		step isScript ifTrue: [^ convertedScript].
		
		convertedScript next: step asNewStyleScript.
		convertedScript next adoptOrganization: convertedScript organization].
	
	^ convertedScript