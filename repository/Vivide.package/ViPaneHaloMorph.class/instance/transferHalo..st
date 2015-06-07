events
transferHalo: event
	"Transfer the halo to the next likely recipient"
	
	target
		ifNil:[self delete]
		ifNotNil: [:t |
			t
				transferHalo: (event transformedBy: (t transformedFrom: self))
				from: t].