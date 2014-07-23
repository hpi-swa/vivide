accessing
artifact: aMorph

	aMorph = artifact ifTrue: [^ self].
	artifact := aMorph.
	artifact hResizing: #spaceFill.
	
	self artifactChanged: artifact.