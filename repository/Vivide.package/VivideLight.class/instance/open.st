initialization
open 

	ActiveVivide := self.
	
	"Allow dropping things in the world."
	ActiveWorld transferMorphConverter: #openArtifactsForTransferMorph:.
	
	self openInWorld.