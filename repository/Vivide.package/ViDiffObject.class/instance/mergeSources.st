as yet unclassified
mergeSources

	| result primaryResult secondaryResult |
	primaryResult := self primarySource asList.
	secondaryResult := self secondarySource asList.
	
	result := OrderedCollection new: (primaryResult size max: secondaryResult size) withAll: nil.
	1 to: result size do: [:i |
		result at: i put: (ViDiffObject
			with: (primaryResult at: i ifAbsent: [])
			with: (secondaryResult at: i ifAbsent: []))].
	^ result