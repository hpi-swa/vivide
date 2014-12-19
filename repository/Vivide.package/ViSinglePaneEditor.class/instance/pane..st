as yet unclassified
pane: aPane

	self pane ifNotNil: [:p | p delete].
	self extent: aPane extent. "Ensure same size."
	self addMorphBack: aPane.
	self updateHeaderText.