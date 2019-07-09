tests
test09IconCode
	"For script serialization."
	
	<timeout: 60>
	
	| script iconCode |
	script := [:num | num * num] asScript.

	script icon: ViIcons icons8User64px1Icon hibernate.
	iconCode := script asDictionary at: #iconCode.
	
	self
		assert: 'ViIcons icons8User64px1Icon'
		equals: iconCode.
		
	script icon: nil.
	script mergeFromDictionary: (Dictionary newFrom: {#iconCode -> 'ViIcons icons8User64px1Icon'}).
	
	self
		assert: ViIcons icons8User64px1Icon
		equals: script icon.