tests
test06OpenEditorForObject
	"Editors are able to communicate new objects and new editors."

	view openArtifact: 1.
	self assert: (view objects hasEqualElements: #(1)).
	
	view openArtifact: 2.
	self assert: (view objects hasEqualElements: #(1 2)).