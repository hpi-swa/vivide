actions
openNextSteps

	self object
		stepsDo: [:s | self artifactRequested: s]
		ifCyclic: [:repeatedStep |
			"Show the cycle!"
			self flag: #tofix. "mt: Strange behavior in ArtifactListView2..."
			"self artifactCreated: 
				(self class new object: repeatedStep)"].
	
	self grabKeyboard.