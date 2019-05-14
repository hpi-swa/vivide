public
doSilently: aBlock
	"Perform the block, and ensure that no system notification are broadcasted while doing so."

	| result |
	silenceLevel := silenceLevel + 1.
	result := aBlock ensure: [silenceLevel > 0 ifTrue: [silenceLevel := silenceLevel - 1]].
	^ result.