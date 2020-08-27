as yet unclassified
removePane: aPane
	"See #removedMorph:."

	self assert: [aPane hasProperty: #inputPane].
	
	(aPane valueOfProperty: #inputPane)
		validOutputConnections do: #detach.
	aPane removeProperty: #inputPane.
	
	self panes remove: aPane.
	self updateModelInput.
	^ aPane