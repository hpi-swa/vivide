updating
updateSourceCode
	"Interpret current script pointer and update visible code."
	
	| old new formOld formNew |
	old := edit theText.
	new := self script copyFrom: self scriptPointer first to: self scriptPointer last.
	
	"edit hide.
	
	formOld := edit textMorph imageForm."
	edit theText: new.
	"formNew := edit textMorph imageForm.
	 
	
	new size > old size
		ifTrue: []
		ifFalse: [].
	
	"