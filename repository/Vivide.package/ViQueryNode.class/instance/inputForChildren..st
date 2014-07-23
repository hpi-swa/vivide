as yet unclassified
inputForChildren: object
	"Handle all those object tuples we may have..."

	self flag: #broken. "mt: What if the object actually is a collection? Look at the identity query. Should not change..."
	((ViQueryInterpreter isCollection: object)
		ifFalse: [{object}]
		ifTrue: [object]) in: [:objects | 
			self object: objects first.
			objects withIndexDo: [:o :i |
				self
					at: i asString, '_object'
					put: o]].