as yet unclassified
reset

	self model ifNil: [^ self].
	"self container ifNil: [^ self]."
	
	self model objects in: [:objects |
		self container
			perform: (self objectsAsContext
				ifTrue: [#context:]
				ifFalse: [#object:])
			with: (objects size = 1
				ifTrue: [objects first]
				ifFalse: [objects])].