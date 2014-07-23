as yet unclassified
all

	| results |
	results := OrderedCollection new.
	#(Monticello Seaside Magritte Pier) do: [:packageName |
		#(#coverageFor: #overheadForCoverage: #allTracesFor: #coveredTracesFor:) do: [:action |
			results add: (ViBenchmark perform: action with: packageName)]].
	
	^ results