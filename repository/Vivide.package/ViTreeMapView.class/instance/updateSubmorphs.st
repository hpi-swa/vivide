as yet unclassified
updateSubmorphs

	self assert: self root hasSubmorphs not.
	
	self layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	self updateSubmorphsFor: self model owner: self root.
	self root layoutInset: 0.
	self root borderWidth: 0.