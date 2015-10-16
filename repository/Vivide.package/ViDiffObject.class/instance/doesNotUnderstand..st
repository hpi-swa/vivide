as yet unclassified
doesNotUnderstand: msg

	| primaryResult secondaryResult |
	primaryResult := [msg sendTo: self primarySource] on: Error do: [:ex | nil].
	secondaryResult := [msg sendTo: self secondarySource] on: Error do: [:ex | nil].

	(primaryResult isNil and: [secondaryResult isNil])
		ifTrue: [^ nil].

	"Do not swallow primitive types."
	(ViDiffObject isOfPrimitiveType: primaryResult)
		ifTrue: [^ primaryResult].
	(ViDiffObject isOfPrimitiveType: secondaryResult)
		ifTrue: [primaryResult ifNil: [^ secondaryResult] ifNotNil: [^ primaryResult]].	
	
	"No diffs in diffs."
	(primaryResult class == ViDiffObject
		or: [secondaryResult class == ViDiffObject])
			ifTrue: [^ self].
	
	^ ViDiffObject with: primaryResult with: secondaryResult