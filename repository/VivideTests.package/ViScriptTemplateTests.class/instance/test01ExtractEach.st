tests - extraction patterns
test01ExtractEach

	| script |
	script := [:n | #text -> n asString] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#text -> '1'. #object -> 1}.
			{#text -> '2'. #object -> 2}}
		equals: (script process: #(1 2)) asArray.
	
	script := [:n | #icon -> ViIcons vivideLogo] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#icon -> ViIcons vivideLogo. #object -> 1}.
			{#icon -> ViIcons vivideLogo. #object -> 2}}
		equals: (script process: #(1 2)) asArray.
	
	script := [:n | {#text -> n asString. #icon -> ViIcons vivideLogo}] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#text -> '1'.#icon -> ViIcons vivideLogo. #object -> 1}.
			{#text -> '2'.#icon -> ViIcons vivideLogo. #object -> 2}}
		equals: (script process: #(1 2)) asArray.