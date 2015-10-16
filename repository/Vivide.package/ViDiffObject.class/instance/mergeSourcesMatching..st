as yet unclassified
mergeSourcesMatching: block

	| result primaryResult secondaryResult notFound |
	primaryResult := self primarySource asList asOrderedCollection.
	secondaryResult := self secondarySource asList asOrderedCollection.
	
	result := OrderedCollection new.
	notFound := OrderedCollection new.
	
	primaryResult do: [:a | 
		(secondaryResult detect: [:ea | block value: a value: ea] ifNone: [])
			ifNil: [notFound add: (ViDiffObject with: a with: nil)]
			ifNotNil: [:b |
				secondaryResult remove: b.
				result add: (ViDiffObject with: a with: b)]].
	
	result addAll: notFound.
	result addAll: (secondaryResult collect: [:b | ViDiffObject with: nil with: b]).
	^ result