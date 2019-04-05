tests
test23UpToDetectSkippingExtractions
	"For intermediate property extractions, keep everything."

	| script |
	self flag: #toTest. "mt: #upToEnd etc."

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num + num].
		[:num | #text -> num asString].	
	} asScript.
	
	sut := ViQueryInterpreter on: script using: #(1 2 3).
	self
		assert: sut hasObjects;
		deny: sut hasProperties.
	
	sut upToDetect: [:step | step next isNil].
	self
		assert: #(2 8 18) equals: sut objects asArray;
		assert:{
			{ {#text->'1' . #object->1}. {#text->'4' . #object->4}. {#text->'9' . #object->9} } asOrderedCollection.
			{ {#text->'2' . #object->2}. {#text->'8' . #object->8}. {#text->'18' . #object->18} } asOrderedCollection  }
		equals: sut properties asArray.