tests
test03MergeProfile

	| profile dict |
	profile := converter profile.
	dict := profile asDictionary.
	self deny: profile label = #something.

	dict at: #label put: #something.
	converter mergeProfile: dict.	
	self assert: profile label = #something.