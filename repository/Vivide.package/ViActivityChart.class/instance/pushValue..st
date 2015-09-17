as yet unclassified
pushValue: val

	| v scale |
	v := self graph vertices.
	
	scale := self graph bottom - (v at: v size - 2) y / ((prev ifNil: [1]) max: 1).
	
	2 to: v size - 2 do: [:i |
		v at: i-1 put: (v at: i-1) x @ (v at: i) y].
	v at: v size - 2 put: (v at: v size - 2) x @ ((v at: v size) y - (val * scale)).
	self graph layoutChanged.
	
	prev := val.
	
"	self graph computeBounds."
"	self he"