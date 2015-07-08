tests
test04EditProperties

	| script |
	script := {[:num | num * 2] -> {#color -> #blue. #foo -> #bar}} asScript.
	editor object: script.

	self deny: #test04EditProperties = script id.
	self assert: '{
	#color -> #blue.
	#foo -> #bar.
}' equals: editor propertiesToString.

	editor goUpToTop.
	editor visibleSourceCode: editor sourceCode, (' -> \{{1} {2} {3} {4}\}' format: {
		'#color -> #yellow.'. "Change property"
		'#selectionMode -> #multi.'. "Add new property"
		'#foo -> nil.'. "Remove property"
		'#id -> #test04EditProperties.'. "Specialize default property"
	}).
	editor acceptSourceCode.
	
	self assert: #test04EditProperties equals: script id.
	self assert: #yellow equals: (script valueOfProperty: #color).
	self assert: (script valueOfProperty: #foo) isNil.
	self assert: #multi equals: (script valueOfProperty: #selectionMode).