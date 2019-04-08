actions - editing
proposeScriptTemplate

	| inner spec properties |
	inner := self visibleSourceCode.
	properties := self object properties copy.
	spec := ViScriptEditor templateForSourceCode: inner.
	
	"Insert missing curly brackets for property steps."
	(spec value includesKey: #isProperty) ifTrue: [
		self visibleSourceCode: (ViScriptEditor wrapExtractionIntoArray: inner)].

	"Merge proposed properties with existing ones."
	spec value keysAndValuesDo: [:key :value |
		properties at: key put: value].

	"New pointer."
	script := spec key value, String cr, '-> ', (self propertiesToStringFrom: properties associations, self specialProperties).
	scriptPointer := spec key key ifNil: [1 to: script size].
	
	shouldPropose := false.
	self textField margins: (4@0 corner: 0@7).