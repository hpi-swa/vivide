instance creation
new: symbolOrBlockOrScript for: objects

	self flag: #deprecated.
	
	^ self new
		pane: (ViPane
			forScript: symbolOrBlockOrScript
			withObjects: objects);
		yourself