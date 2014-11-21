private
alignNeighbours: someMorphs for: variable "pivotMorph"

	someMorphs ifEmpty: [^ self].
	
	self flag: #dataNeeded. "mt: Are we resizing or are we moving here?!"
	
	someMorphs do: [:fixed |
		((variable top - fixed top) abs between: 0 and: 15)
			ifTrue: [variable
				"height: variable height - fixed top + variable top;"
				top: fixed top].
		((variable bottom - fixed bottom) abs between: 0 and: 15)
			"We have to change dimensions because it might be a resizing event."
			ifTrue: [variable height: fixed bottom - variable top].

		((variable left - fixed left) abs between: 0 and: 15)
			ifTrue: [variable
				"width: variable width + variable left - fixed left;"
				left: fixed left].
		((variable right - fixed right) abs between: 0 and: 15)
			"We have to change dimensions because it might be a resizing event."
			ifTrue: [variable width: fixed right - variable left]].
		
"	self
		alignNeighbours: someMorphs allButFirst
		for: someMorphs first."