initialization
open 
	"See #close."

	TheWorldMainDockingBar showWorldMainDockingBar: false.	

	self openInWorld.
	
	self assert: self world == ActiveWorld.
	
	ActiveVivide := self.
	ActiveHand addKeyboardListener: self.
	
	(Smalltalk classNamed: #ViToolSet)
		ifNotNil: [:ts | 
			self setProperty: #previousToolSet toValue: ToolSet default. 
			ToolSet default: ts].
	
	"Allow dropping things in the world."
	self world transferMorphConverter: #openArtifactsForTransferMorph:.