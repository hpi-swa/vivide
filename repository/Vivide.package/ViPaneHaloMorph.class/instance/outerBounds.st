geometry
outerBounds

	| box |
	self target ifNil: [^ super outerBounds].
	box := self basicBox.
	newOutputPane ifNotNil: [:m |
		box := box quickMerge: m bounds].
	
	((self target connections
		gather: [:c | {c source. c target}])
		reject: [:o | o isNil]) asSet do: [:m |
		box := box quickMerge: m bounds].
	^ box