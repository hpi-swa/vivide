actions - editing
proposeScriptTemplate

	| spec properties |
	properties := self object properties copy.
	spec := ViScriptEditor templateForSourceCode: edit theText asString.

	"Merge proposed properties with existing ones."
	spec value keysAndValuesDo: [:key :value |
		properties at: key put: value].  

	"New pointer."
	script := spec key value, String cr, '-> ', (self propertiesToStringFrom: properties associations, self specialProperties).
	scriptPointer := spec key key ifNil: [1 to: script size].
	
	shouldPropose := false.