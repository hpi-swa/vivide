as yet unclassified
inputForChildren
	"Objects that should internally be used for computing the next children."

	(self keys includes: #objects)
		ifTrue: [^ self at: #objects].
	
	self firstStep isScript
		ifTrue: [^ self at: #object].
	
	^ (self keys
		select: [:key | key endsWith: '_object'] "do not fetch duplicate #object because it is #1_object"
		thenCollect: [:objectKey | self at: objectKey]) in: [:objects |
			objects size = 1 "no 1-tuples allowed"
				ifTrue: [objects first]
				ifFalse: [objects]]