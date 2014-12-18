accessing - objects
objects: someObjects
	
	| editors |

	editors := someObjects collect: [:obj |
		self artifactContainers
			detect: [:c | c isObject: obj]
			ifNone: [(ViArtifactLookupService doObject: obj) new
				object: obj;
				hResizing: #spaceFill;
				yourself]].
	
	self artifactContainers: editors.

	"After updating the list of all containers, give each the chance to update. We need to make this now because they may depend of neighbours."
	editors
		select: [:c | c hasUnacceptedChanges not]
		thenDo: [:c | c clear "update contents"].