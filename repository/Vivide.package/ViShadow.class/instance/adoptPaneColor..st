as yet unclassified
adoptPaneColor: color

	super adoptPaneColor: color.
	
	self flag: #hacky. "mt: We cannot know that we are part of a transform morph with a color."
	self submorphs first color: self owner owner color.