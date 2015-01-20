as yet unclassified
removeCycle

	self object next: nil.
	
	self flag: #informationHiding. "mt: Use script change notifier?"
	self updateToolbars.