memento - cleanup
clear

	super clear.
	
	self definition
		ifNil: ["Not supported yet..."]
		ifNotNil: [:def |	 edit definition: def].