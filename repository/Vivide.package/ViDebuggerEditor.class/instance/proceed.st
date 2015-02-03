actions
proceed

	self debugger proceed: (self firstOwnerSuchThat: [:m | m isSystemWindow]).  