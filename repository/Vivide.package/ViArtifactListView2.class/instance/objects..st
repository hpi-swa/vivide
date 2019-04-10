accessing - objects
objects: someObjects
	"Resets all open editors."
	
	self artifactContainers: (someObjects collect: [:obj |
		self artifactContainers
			detect: [:c | c isObject: obj]
			ifNone: [(ViArtifactLookupService doObject: obj) new
				object: obj;
				hResizing: #spaceFill;
				yourself]]).