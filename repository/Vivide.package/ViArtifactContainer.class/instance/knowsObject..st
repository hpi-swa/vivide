testing - object
knowsObject: anObject
	"Is there a relationship between my object and the given one? Return a reason if I know, nil otherwise."
	
	^ self object == anObject
		ifTrue: [#==]
		ifFalse: []