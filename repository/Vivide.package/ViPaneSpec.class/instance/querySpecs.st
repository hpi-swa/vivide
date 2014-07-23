accessing
querySpecs

	^ querySpecs ifNil: [querySpecs := OrderedCollection new]