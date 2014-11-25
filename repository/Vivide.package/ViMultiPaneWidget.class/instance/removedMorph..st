as yet unclassified
removedMorph: morph

	self panes
		ifEmpty: [^ self delete]
		ifNotEmpty: [:panes |
			"See ViConstraintLayout."
			panes anyOne layoutChanged].
	
	"Update geometry, e.g. for redrawing surrounding system window."
	self flag: #sideEffects. "mt: Should not know about that here..."
	self fullBounds.