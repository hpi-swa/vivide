tests
test26TemplateExtractionWithObject
	"Template detection."
	
	| script properties |
	script := [:num | {
		#text -> num asString.
		#object -> (num * 2)}] asScript.

	self assert: script isPropertyExtraction.

	properties := script process: #(2 3).
	self assert: 2 equals: properties size. "for two objects"
	self assert: 2 equals: properties first size. "for #text and #object"
	
	properties := Dictionary newFrom: properties first.
	self assert: (properties includesKey: #object).
	self assert: 4 equals: (properties at: #object).