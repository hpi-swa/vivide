source code
setScriptTemplate
	"Choose a script template and set it as text representation for the current step."

	| inner spec properties |
	inner := self visibleSourceCode.
	properties := self thisStep properties copy.
	spec := ViScriptTemplate lookupTemplate: inner.
	
	"Insert missing curly brackets for property steps."
	(spec value includesKey: #isProperty) ifTrue: [
		self visibleSourceCode: (ViScriptTemplate wrapExtractionIntoArray: inner)].

	"Merge proposed properties with existing ones."
	spec value keysAndValuesDo: [:key :value |
		properties at: key put: value].

	"New script template to work with."
	self fullSourceCode: ('{1}\-> {2}' withCRs format: {
		spec key value.
		self propertiesToStringFrom: properties associations, self specialProperties}).
	self fullSourceCodeInterval: (spec key key ifNil: [1 to: self fullSourceCode size]).
	
	"Remove the room for the magic wand. See #drawWizardIndicationOn:."
	self textField margins: (4@0 corner: 0@7).