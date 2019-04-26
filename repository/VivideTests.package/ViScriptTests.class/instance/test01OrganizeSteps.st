tests - organization
test01OrganizeSteps

	| script organization |
	script := [:num | num + num] asScript.
	organization := ViScriptOrganizer new.
	self
		assert: script isRegistered;
		deny: script organization == organization.
		
	script organization: organization.
	self deny: script isRegistered.
	
	script register.
	self assert: script isRegistered.
	
	script unregister.
	self
		deny: script isRegistered;
		assert: script organization == organization.