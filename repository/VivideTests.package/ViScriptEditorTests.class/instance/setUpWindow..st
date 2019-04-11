running
setUpWindow: someInputObjects
	
	self assert: script notNil.
	
	window := ViArtifactListView2 new.
	window objects: { someInputObjects }, script steps.
	
	editor := window artifactContainers second.