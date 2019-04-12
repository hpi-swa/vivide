actions
close
	"See #open."

	"No more dropping in the world."
	self flag: #cleanUp. "mt: What about restoring the old state instead of reset?"
	self world resetTransferMorphConverter.

	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	(self valueOfProperty: #previousToolSet) ifNotNil: [:ts |
		ToolSet default: ts].
	
	self world == ActiveWorld
		ifTrue: [ActiveHand removeKeyboardListener: self].

	ActiveVivide == self
		ifTrue: [ActiveVivide := nil].

	self delete.

	TheWorldMainDockingBar showWorldMainDockingBar: true.