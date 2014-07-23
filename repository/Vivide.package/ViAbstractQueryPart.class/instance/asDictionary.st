serialization
asDictionary

	^ Dictionary newFrom:
	"step type"
	{#class -> self class},
	"primitive values"
	(#(id properties) collect: [:prop |
		prop -> (self perform: prop)])