initialization
reset
	
	self updatePanesFor: self paneSpecs.
	
	"We have to initiate an additional update because the update code above already did an update w/o given the new objects."
	self owner ifNotNil: [:pane | pane beginUpdateChainWith: [
		self notifyAboutIncomingObjects]].