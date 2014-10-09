initialization
initialize

	outputPanes := IdentitySet new.
	inputPanes  := IdentitySet new.

	super initialize.
	self color: (Color black alpha: 0.2).