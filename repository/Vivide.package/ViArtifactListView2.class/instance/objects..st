accessing - objects
objects: someObjects
	"Resets all open editors."
	
	| editors |

	editors := someObjects collect: [:obj |
		self artifactContainers
			detect: [:c | c isObject: obj]
			ifNone: [(ViArtifactLookupService doObject: obj) new
				object: obj;
				hResizing: #spaceFill;
				yourself]].
	
	self artifactContainers: editors.
	self onObjectsChanged.

	"After updating the list of all containers, give each the chance to update. We need to make this now because they may depend of neighbours."
	self setProperty: #isUpdatingAllArtifacts toValue: true. 
	[editors
		select: [:c | c hasUnacceptedChanges not]
		thenDo: [:c | c clear "update contents"]] ensure: [
			self removeProperty: #isUpdatingAllArtifacts].