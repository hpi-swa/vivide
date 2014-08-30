as yet unclassified
collectBaseClassesForContext: someObjects

	self flag: #optimize. "mt: Stop if there is only Object class left."
	^ ((someObjects collect: [:obj | obj class withAllSuperclasses])
		inject: OrderedCollection new
		into: [:all :each | all ifEmpty: [each] ifNotEmpty: [all intersection: each]])
			ifEmpty: [{Object}]