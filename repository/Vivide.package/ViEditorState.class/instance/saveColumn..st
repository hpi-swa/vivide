saving - general
saveColumn: aColumn

	self properties at: #width put: aColumn width.
	aColumn editors do: [:editor | editor saveState: self newState].

