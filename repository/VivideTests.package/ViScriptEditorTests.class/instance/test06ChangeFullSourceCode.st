tests - single
test06ChangeFullSourceCode

	script := {[:num | num * 2] -> {#color -> #blue. #foo -> #bar}} asScript.
	editor object: script.

	self
		assert: #blue equals: (script valueOfProperty: #color);
		deny: (script hasProperty: #selectionMode);
		assert: #bar equals: (script valueOfProperty: #foo);
		deny: #test06ChangeFullSourceCode equals: script id;
		assert: (editor fullSourceCode includesSubstring: '[:num | num * 2]' caseSensitive: true);
		assert: #(2 4 6) equals: (script interpretScriptWith: #(1 2 3)) objects asArray.
	
	"Let the editor show the entire text representation, that is, the full source code."
	editor goUpToTop.
	
	editor visibleSourceCode: ('{5} -> \{{1}. {2}. {3}. {4}. \}' format: {
		'#color -> #yellow'. "Change value #color property"
		'#selectionMode -> #multi'. "Add new #selectionMode property"
		'#foo -> nil'. "Remove existing #foo property"
		'#id -> #test06ChangeFullSourceCode'. "Change value of (invisible) #id property"
		'[:in :out | out addAll: in]'. "Rewrite the entire transformation:"
	}).
	editor acceptSourceCode.

	self
		assert: #yellow equals: (script valueOfProperty: #color);
		assert: #multi equals: (script valueOfProperty: #selectionMode);
		deny: (script hasProperty: #foo);
		assert: #test06ChangeFullSourceCode equals: script id;
		assert: (editor fullSourceCode includesSubstring: '[:in :out | out addAll: in]' caseSensitive: true);
		assert: #(1 2 3) equals: (script interpretScriptWith: #(1 2 3)) objects asArray.