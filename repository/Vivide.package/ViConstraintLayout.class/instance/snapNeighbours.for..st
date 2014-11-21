private
snapNeighbours: someMorphs for: variable "pivotMorph"

	| snapRange |
	someMorphs ifEmpty: [^ self].
	
	snapRange := self cellInset to: self cellInset + 15.

	self flag: #dataNeeded. "mt: Are we resizing or are we moving here?!"
	
	someMorphs do: [:fixed |
		(variable top - fixed bottom between: 0 and: snapRange last)
			ifTrue: [variable top: fixed bottom + snapRange first].
		(fixed top - variable bottom between: 0 and: snapRange last)
			"We have to change dimensions because it might be a resizing event."
			ifTrue: [variable height: fixed top - variable top - snapRange first].

		(variable left - fixed right between: 0 and: snapRange last)
			ifTrue: [variable left: fixed right + snapRange first].
		(fixed left - variable right between: 0 and: snapRange last)
			"We have to change dimensions because it might be a resizing event."
			ifTrue: [variable width: fixed left - variable left - snapRange first]].
		
"	self
		alignNeighbours: someMorphs allButFirst
		for: someMorphs first."