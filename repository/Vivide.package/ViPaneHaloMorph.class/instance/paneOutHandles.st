accessing
paneOutHandles

	| result |
	result := OrderedCollection new.
	self allMorphsDo: [:m | (m hasProperty: #paneOut) ifTrue: [result add: m]].
	^ result