updating - specific
updateSubmorphs

	self assert: self content hasSubmorphs not.
	self updateSubmorphsFor: self model owner: self content.

	self content layoutInset: 0.
	self content borderWidth: 0.