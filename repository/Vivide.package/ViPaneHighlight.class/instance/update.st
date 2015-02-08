as yet unclassified
update

	self pane ifNil: [self delete. ^ self].
	
	self bounds: (self pane bounds outsetBy: 5) .
	
	self world
		ifNil: [self openInWorld]
		ifNotNil: [:w | self comeToFront].