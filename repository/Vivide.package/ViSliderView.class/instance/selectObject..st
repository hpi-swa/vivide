as yet unclassified
selectObject: index

	index > self objects size ifTrue: [^ self].
	self yield: {Dictionary newFrom: {#object -> (self objects at: index)}}