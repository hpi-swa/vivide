tests
test01TemplateDetection
	"Low-level template detection."

	{
		'[:num | num * num]' -> ViScriptTemplate templateStandard.
		'[:a :b | a - b]' -> ViScriptTemplate templateTuples.
		'[#(1 2 3 4 5)]' -> ViScriptTemplate templateGlobal.
		'[:morphs | morphs select: [:m | m color = Color yellow]]' -> ViScriptTemplate templateAllAtOnce.
		'[:m | #text -> m asString]' -> ViScriptTemplate templateProperties.
		'[:m | { #text -> m asString. #icon -> nil }]' -> ViScriptTemplate templateProperties.
		'[:a :b | #text -> a asString]' -> ViScriptTemplate templateTuplesProperties.
		'[:a :b | { #text -> a asString. #icon -> nil }]' -> ViScriptTemplate templateTuplesProperties.
		'[{#id -> #foo. #bar -> #baz}]' -> ViScriptTemplate templateWrapper
	} do: [:spec | | template |
		template := (ViScriptTemplate lookupTemplate: spec key) key.
		self assert: template = spec value.
		Compiler evaluate: (template value first: template key first - 1), spec key, (template value last: template value size - template key last)]