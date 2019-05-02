tests - list and script conversion
test11ListAsScriptWithLocalReferenceAndProperties

	| script |
	script := {
		[:number | number * number] -> { #color -> #blue }.
		[:number | #text -> number asString] -> { #color -> #yellow }.
		1 -> { #color -> #green }.
	} asScript.

	self
		assert: 3 equals: script allSteps size;
		assert: script steps last isScript;
		assert: script steps last hasAfterScripts;
		assert: script steps last afterScripts first == script;
		assert: #blue equals: (script valueOfProperty: #color);
		assert: #yellow equals: (script next valueOfProperty: #color);
		assert: #green equals: (script next next valueOfProperty: #color).	.