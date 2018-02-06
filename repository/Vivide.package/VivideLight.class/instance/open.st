initialization
open 
	"See #close."

	TheWorldMainDockingBar showWorldMainDockingBar: false.	

	self openInWorld.
	
	self assert: self world == ActiveWorld.
	
	ActiveVivide := self.
	ActiveHand addKeyboardListener: self.
	
	self initializeSystemChangeNotifications.

	"Allow dropping things in the world."
	self world transferMorphConverter: #openArtifactsForTransferMorph:.