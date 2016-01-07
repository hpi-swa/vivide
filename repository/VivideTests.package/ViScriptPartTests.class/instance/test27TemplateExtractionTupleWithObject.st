tests
test27TemplateExtractionTupleWithObject
	"Template detection."
	
	| script properties |
	script := [:num :tail | {
		#text -> num asString.
		#object -> (num + tail)}] asScript.

	self assert: script isPropertyExtraction.

	properties := script process: #((2 3) (4 5)).
	self assert: 2 equals: properties size. "for two objects"
	self assert: 3 equals: properties first size. "for #text and #object and #objects"
	
	properties := Dictionary newFrom: properties first.
	self assert: (properties includesKey: #object).
	self assert: 5 equals: (properties at: #object).
	self assert: (properties includesKey: #objects).
	self assert: #(2 3) equals: (properties at: #objects).