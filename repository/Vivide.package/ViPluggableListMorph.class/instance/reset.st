initialization
reset

	self selectNone.
	self changed: #list.
	
	self flag: #todo:. "mt: Restore multi-selection also."