initialization
open 
	"See #close."
	
	ViActiveVivide world == ActiveWorld
		ifTrue: [ActiveVivide := self].
	
	ViActiveVivide world == ActiveWorld
		ifTrue: [ActiveHand addKeyboardListener: self].
	
	self initializeSystemChangeNotifications.
	
	"Allow dropping things in the world."
	ViActiveVivide world transferMorphConverter: #openArtifactsForTransferMorph:.
	
	self openInWorld.