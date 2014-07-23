as yet unclassified
test08Variables

	sut
		mapType: #each;
		sourceCode: '[:google :term | google find: term asString]'.
		
	self assert: #(term) equals: sut variables asArray.
	
	sut
		mapType: #none;
		sourceCode: '[:v1 :v2 | v1 contents: 5. v2 contents: #foo]'.
	
	self assert: #(v1 v2) equals: sut variables asArray.