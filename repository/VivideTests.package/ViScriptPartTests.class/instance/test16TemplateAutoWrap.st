tests
test16TemplateAutoWrap

	{
		'[:a | #text -> a asString]' -> '[:a | { #text -> a asString }]'.
		'[:a :b | #text -> a asString]' -> '[:a :b | { #text -> a asString }]'.
		'[:a | {#text -> a asString}  ]' -> '[:a | {#text -> a asString}  ]'. "Keep it"
		'[:a | #text -> a asString. #foo -> #bar ]' -> '[:a | { #text -> a asString. #foo -> #bar } ]'.
	} do: [:spec |
		self assert: (spec key asScript sourceCode includesSubstring: spec value caseSensitive: true)].