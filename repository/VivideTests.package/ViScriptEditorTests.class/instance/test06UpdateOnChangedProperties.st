tests - single
test06UpdateOnChangedProperties

	| script |
	script := {[:num | num * 2] -> {#foo -> #bar}} asScript.

	editor object: script.
	self assert: '{
	#foo -> #bar.
}' equals: editor propertiesToString.
	
	script setProperty: #foo toValue: nil.
	script setProperty: #color toValue: #yellow.
	self assert: '{
	#color -> #yellow.
}' equals: editor propertiesToString.