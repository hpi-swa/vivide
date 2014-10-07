collection handling
packTuples: someTuples
	"Like #collapseTuples but only for runs. Keeps sort order"

	| result object tail |
	result := OrderedCollection new.
	tail := OrderedCollection new.
	someTuples do: [:tuple |
		object ifNil: [object := tuple first].
		object ~~ tuple first ifTrue: [
			result add: {object.tail asArray}.
			tail := OrderedCollection new.
			object := tuple first].
		tail add: tuple allButFirst].
	result add: {object.tail asArray}.
	
	^ result asArray