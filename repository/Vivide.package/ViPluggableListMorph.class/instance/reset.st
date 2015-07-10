initialization
reset

	| oldSelection |
	oldSelection := self currentSelectionIndex.
	self currentSelectionIndex: 0.

	self changed: #list.
	self currentSelectionIndex: (oldSelection min: self list size).
	
	self flag: #todo: "mt: Restore multi-selection also."