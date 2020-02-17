tests
test04CleanUpOrganization
	
	| unusedScript |
	unusedScript := [:num | num + num] asScript.

	unusedScript adoptOrganization: converter profile organization.
	self assert: unusedScript isRegistered.

	converter exportOrganization. "Triggers a clean-up."
	self deny: unusedScript isRegistered.

	unusedScript adoptOrganization: converter profile organization.
	self assert: unusedScript isRegistered.
		
	converter importOrganization. "Triggers a clean-up."
	self deny: unusedScript isRegistered.