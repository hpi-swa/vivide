processing
process: someObjects within: aContext

	self assert: definition wantsEachObjectSeparately.
	^ someObjects collect: [:obj |
		(definition block cull: obj cull: aContext) -> obj]