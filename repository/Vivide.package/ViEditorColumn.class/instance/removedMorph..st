submorphs-add/remove
removedMorph: aMorph
	"Update layout for the other morphs."

	super removedMorph: aMorph.  
	
	self submorphs ifEmpty: [self delete].