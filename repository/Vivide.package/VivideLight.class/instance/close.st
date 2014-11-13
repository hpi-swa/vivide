actions
close
	"See #open."

	self delete.
	
	ActiveVivide == self
		ifTrue: [ActiveVivide := nil].
	
	ViActiveVivide world == ActiveWorld
		ifTrue: [ActiveHand removeKeyboardListener: self].
	
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	"No more dropping in the world."
	self flag: #cleanUp. "mt: What about restoring the old state instead of reset?"
	ViActiveVivide world resetTransferMorphConverter.