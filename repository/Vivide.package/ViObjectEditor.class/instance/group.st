accessing - object
group

	^ self object
		ifNil: ['undefined']
		ifNotNil: [:o | o class theNonMetaClass name]