tests
test02TemplateDetection

	{
		'[:num | num * num]' -> ViScriptEditor templateStandard.
		'[:a :b | a - b]' -> ViScriptEditor templateTuples.
		'[#(1 2 3 4 5)]' -> ViScriptEditor templateGlobal.
		'[:morphs | morphs select: [:m | m color = Color yellow]]' -> ViScriptEditor templateAllAtOnce.
		'[:m | #text -> m asString]' -> ViScriptEditor templateProperty.
		'[:m | { #text -> m asString. #icon -> nil }]' -> ViScriptEditor templateProperties.
		'[:a :b | #text -> a asString]' -> ViScriptEditor templateTuplesProperty.
		'[:a :b | { #text -> a asString. #icon -> nil }]' -> ViScriptEditor templateTuplesProperties.
		'[{#id -> #foo. #bar -> #baz}]' -> ViScriptEditor templateWrapper
	} do: [:spec | | template |
		template := (ViScriptEditor templateForSourceCode: spec key) key.
		self assert: template = spec value.
		Compiler evaluate: (template value first: template key first - 1), spec key, (template value last: template value size - template key last)]