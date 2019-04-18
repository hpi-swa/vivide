accessing
metaScripts

	^ self orderedSteps select: [:step | step isMeta]