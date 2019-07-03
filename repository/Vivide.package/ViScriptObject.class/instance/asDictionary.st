serialization
asDictionary

	^ Dictionary newFrom:
	"step type"
	{#className -> self class name},
	"primitive values"
	(#(id properties) collect: [:prop |
		prop -> (self perform: prop)])