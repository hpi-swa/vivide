as yet unclassified
updateSubmorphs

	self assert: self root hasSubmorphs not.
	self updateSubmorphsFor: self model owner: self root.

	self root layoutInset: 0.
	self root borderWidth: 0.