tests - recursion
test02RecursionVersusReuse
	"If we refer to another script twice, that should not trigger the recursion flag."
	
	| far script interpreter |
	far := {
		[:num | num - 1] -> { #id -> #far }.
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#far.
			#far.
		} asScript.
		script adoptOrganization: far organization.
		
		interpreter := ViScriptInterpreter on: script using: #(2 3).
		interpreter upToEnd.
		self
			assert: #(0 1) equals: interpreter objects asArray;
			deny: script isRecursive.
	].