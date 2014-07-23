actions
close

	self delete.
	
	ActiveVivide == self ifTrue: [
		ActiveVivide := nil].
	
	ActiveHand removeKeyboardListener: self.
	
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	"No more dropping in the world."
	self flag: #cleanUp. "mt: What about restoring the old state instead of reset?"
	ActiveWorld resetTransferMorphConverter.