actions
close
	"See #open."

	"No more dropping in the world."
	self flag: #cleanUp. "mt: What about restoring the old state instead of reset?"
	ViActiveVivide world resetTransferMorphConverter.

	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	ViActiveVivide world == ActiveWorld
		ifTrue: [ActiveHand removeKeyboardListener: self].

	ActiveVivide == self
		ifTrue: [ActiveVivide := nil].

	self delete.