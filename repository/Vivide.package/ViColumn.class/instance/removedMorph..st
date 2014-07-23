submorphs-add/remove
removedMorph: aMorph

	self submorphs
		ifEmpty: [self height: 50].