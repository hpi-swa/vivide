processing
process: someObjects within: aContext

	self assert: definition wantsTwoObjectsAtOnce.
	^ someObjects sorted: definition block