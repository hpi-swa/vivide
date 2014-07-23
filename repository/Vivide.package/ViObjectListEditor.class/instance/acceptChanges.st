memento - data
acceptChanges

	super acceptChanges.
	
	self pages do: [:page | page acceptChanges].