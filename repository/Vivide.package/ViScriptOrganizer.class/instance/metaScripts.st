accessing
metaScripts

	self flag: #metaScript.
	^ self orderedSteps select: [:step | step isMeta]