as yet unclassified
collectBaseClassesForContext: someObjects withTuples: findTuples

	someObjects ifEmpty: [^ {Object}].

	"Find out tuple types."
	findTuples "(someObjects allSatisfy: [:o | ViQueryInterpreter isCollection: o])"
		ifTrue: ["Treat all objects as same tuple size."
			| result |
			result := Array new: someObjects first size.
			(someObjects allSatisfy: [:array | array size = someObjects first size])
				ifFalse: [^ {Array}].
			1 to: result size do: [:index |
				result
					at: index
					put: (self collectBaseClassesForContext: (someObjects collect: [:o | o at: index]))].
			^ result].

	self flag: #optimize. "mt: Stop if there is only Object class left."
	^ ((someObjects collect: [:obj | obj class withAllSuperclasses])
		inject: OrderedCollection new
		into: [:all :each | all ifEmpty: [each] ifNotEmpty: [all intersection: each]])
			ifEmpty: [{Object}]