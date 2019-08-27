tests - multiple
test02AddScriptStep

	| newEditor |
	script := [:num | num * 2] asScript.
	self setUpWindow.
	self
		assert: 2 "input+step"
		equals: window artifactContainers size.
		
	"1) Append new step."
	self assert: script next isNil.
	newEditor := editor addStep.
	self assert: script next notNil.
	self assert: script organization == script next organization.
	self
		assert: 3 "input+step+step"
		equals: window artifactContainers size.
	
	"Check new editor."
	self assert: newEditor equals: window artifactContainers last.
	self deny: editor isWizardActive.
	self assert: newEditor isWizardActive.

	"2) Insert new step between first and last step."
	editor addStep.
	self assert: 3 equals: script steps size.
	self
		assert: 4 "input+step+step+step"
		equals: window artifactContainers size.