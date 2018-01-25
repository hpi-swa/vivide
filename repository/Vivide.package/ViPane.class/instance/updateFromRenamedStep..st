updating
updateFromRenamedStep: evt
	
	self currentQuery == evt item ifTrue: [self updateLabel].