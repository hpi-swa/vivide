as yet unclassified
acceptDroppingPane: aPane at: aPoint
	
	aPane
		topLeft: aPoint;
		adoptOrganization: self organizer.
	
	self addPane: aPane.