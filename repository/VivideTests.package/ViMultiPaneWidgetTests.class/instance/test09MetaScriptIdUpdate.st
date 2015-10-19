tests
test09MetaScriptIdUpdate
	
	| script |
	script := pane currentQuery.
	self assert: self metaScript metaReference == script.
	self assert: (self metaScript metaScriptReferences identityIncludes: script).

	script id: #test09. "Should update metascript!"
	self assert: self metaScript metaReference == script.
	self assert: (self metaScript metaScriptReferences identityIncludes: script).