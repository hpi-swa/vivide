accessing
script: step
	
	"For the same script, just force re-evaluation."
	step = self script ifTrue: [^ self updateResults].

	"For a different script, tell the model and update the view."
	self flag: #metaScript.
	self layoutChanged.
			
	self model firstStep: step.
	self updateView.
			
	self scriptChanged: step.