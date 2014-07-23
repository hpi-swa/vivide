accessing - objects
objects: someObjects
	
	| editors |

	editors := someObjects collect: [:obj |
		(self artifactContainers detect: [:c | c isObject: obj] ifNone: [])
			ifNotNil: [:c | c hasUnacceptedChanges ifFalse: [c clear "update contents"]. c]
			ifNil: [
				(ViArtifactLookupService doObject: obj) new
					object: obj;
					hResizing: #spaceFill;
					yourself]].
	
	self artifactContainers: editors.