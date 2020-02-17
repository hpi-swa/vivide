tests - extraction patterns
test02ExtractEachWithObject

	| script |
	script := [:n | #text -> n asString. #object -> n] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#text -> '1'. #object -> 1}.
			{#text -> '2'. #object -> 2}}
		equals: (script process: #(1 2)) asArray.
	
	script := [:n | #icon -> ViIcons vivideLogo. #object -> (n+1)] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#icon -> ViIcons vivideLogo. #object -> 2}.
			{#icon -> ViIcons vivideLogo. #object -> 3}}
		equals: (script process: #(1 2)) asArray.
	
	script := [:n | {#text -> n asString. #icon -> ViIcons vivideLogo. #object -> (n-1)}] asScript.
	self
		assert: script isPropertyExtraction;
		assert: {
			{#text -> '1'.#icon -> ViIcons vivideLogo. #object -> 0}.
			{#text -> '2'.#icon -> ViIcons vivideLogo. #object -> 1}}
		equals: (script process: #(1 2)) asArray.