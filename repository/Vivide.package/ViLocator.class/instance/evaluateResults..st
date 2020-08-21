actions - results
evaluateResults: nodes

	self hideResults.
	VivideLight active openArtifacts: (nodes collect: [:node | (node at: #object) value "support blocks"]).