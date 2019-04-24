tests - enumeration
test04StepsDoNoReference
	"Do not consider references, just the chain of steps via #next."
	
	| script far |
	far := {
		[:num | num + 10] -> { #id -> #alpha }.
		[:num | num - 10] -> { #id -> #beta }.
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			[:num | num + num] -> { #id -> #one }.
			[:num | num - num] -> { #id -> #two }.
			#alpha -> { #id -> #three }.
		} asScript.
		script adoptOrganization: far organization.
	
		self
			assert: #(one two three)
			equals: (Array streamContents: [:s | script stepsDo: [:step | s nextPut: step id]])
	].