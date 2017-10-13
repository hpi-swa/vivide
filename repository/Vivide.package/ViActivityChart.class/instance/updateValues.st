as yet unclassified
updateValues

	| v scale |
	v := self graph vertices.
	
	scale := self height / (self graphs first max max: 1).
	
	self graphs first withIndexDo: [:val :i |
		v at: i put: (v at: i) x @ (v last y - (val * scale))].
	
	self graph layoutChanged.