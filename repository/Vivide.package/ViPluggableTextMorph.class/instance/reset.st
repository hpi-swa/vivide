initialization
reset

	self model ifNil: [^self].

	self changed: #text.
	self yield: self model nodes.