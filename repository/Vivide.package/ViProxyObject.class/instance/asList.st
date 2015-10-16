converting
asList
	"Unpack collections if necessary."
	
	| result |
	(#(Array OrderedCollection) includes: self returnType)
		ifFalse: [^ {self}].
		
	result := (Smalltalk classNamed: self returnType) new: self size withAll: nil.
	1 to: result size do: [:index |
		result at: index put: (self at: index)].
	^ result