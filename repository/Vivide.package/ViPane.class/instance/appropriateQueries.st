accessing - convenience
appropriateQueries
	"Given the #knownScripts, select the ones that match tuple size and kinds in tuple."
	
	| paneBaseClasses paneTupleSize check |
	self flag: #noStreamsSupport.
	self flag: #noProxySupport.
	
	paneTupleSize := self tupleSizeDynamic.
	paneBaseClasses := self baseClass asList.	

	"Tuple size must match and types as well. No support for tuples-in-tuples."
	check := [:step |
		| stepTupleSize stepBaseClasses |
		stepTupleSize := step tupleSize.
		stepBaseClasses := step baseClass asList.
		
		stepTupleSize = paneTupleSize
			and: [stepBaseClasses size = paneBaseClasses size
			and: [ | i pbc | i := 0.
				stepBaseClasses allSatisfy: [:sbc | i := i + 1.
					pbc := paneBaseClasses at: i.
					pbc includesBehavior: sbc]]]].

	^ self knownScripts select: check