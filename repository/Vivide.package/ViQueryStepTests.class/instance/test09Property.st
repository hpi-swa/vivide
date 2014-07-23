tests
test09Property

	self
		assert: {{#text -> '1'}.{#text -> '2'}}
		equals: ((ViQueryStep property: '[:obj | obj asString]') process: #(1 2)).
	self
		assert: {{#text -> '1'}.{#text -> '2'}}
		equals: ((ViQueryStep property: '[:obj | #text -> obj asString]') process: #(1 2)).
	self
		assert: {{#icon -> ViIcons vivideLogo}.{#icon -> ViIcons vivideLogo}}
		equals: ((ViQueryStep property: '[:obj | #icon -> ViIcons vivideLogo]') process: #(1 2)).
	self
		assert: {{#text -> '1'.#icon -> ViIcons vivideLogo}.{#text -> '2'.#icon -> ViIcons vivideLogo}}
		equals: ((ViQueryStep property: '[:obj | {#text -> obj asString. #icon -> ViIcons vivideLogo}]') process: #(1 2)).