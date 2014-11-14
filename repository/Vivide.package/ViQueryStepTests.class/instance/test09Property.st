tests
test09Property

	self
		assert: {{#text -> '1'. #object -> 1}.{#text -> '2'. #object -> 2}}
		equals: ([:n | #text -> n asString] asScript process: #(1 2)) asArray.
	self
		assert: {{#icon -> ViIcons vivideLogo. #object -> 1}.{#icon -> ViIcons vivideLogo. #object -> 2}}
		equals: ([:n | #icon -> ViIcons vivideLogo] asScript process: #(1 2)) asArray.
	self
		assert: {{#text -> '1'.#icon -> ViIcons vivideLogo. #object -> 1}.{#text -> '2'.#icon -> ViIcons vivideLogo. #object -> 2}}
		equals: ([:n | {#text -> n asString. #icon -> ViIcons vivideLogo}] asScript process: #(1 2)) asArray.