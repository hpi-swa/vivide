as yet unclassified
paneInHandles

	| result |
	result := OrderedCollection new.
	self allMorphsDo: [:m | (m hasProperty: #paneIn) ifTrue: [result add: m]].
	^ result