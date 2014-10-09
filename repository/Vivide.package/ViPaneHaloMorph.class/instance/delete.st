submorphs-add/remove
delete

	target ifNotNil: [:morph | morph hasHalo: false].
	^ super delete