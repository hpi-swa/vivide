actions
changeToQueryFrom: button

	| query |
	query := button valueOfProperty: #query.
	self target currentQuery: query.
	self delete.