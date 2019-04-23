tests - list and script conversion
test09ListAsScriptWithProperties
	"For each step in a script, there can be script properties initialized through #asScript."

	| script |
	script := {
		[:num | num * num] -> { #color -> #blue }.
		[:num | num + num] -> { #color -> #yellow }.
	} asScript.
	
	self
		assert: #blue equals: (script valueOfProperty: #color);
		assert: #yellow equals: (script next valueOfProperty: #color).