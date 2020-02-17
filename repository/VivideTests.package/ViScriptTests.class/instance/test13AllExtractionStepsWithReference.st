tests - enumeration
test13AllExtractionStepsWithReference

	| script far |
	far := {
		[:num | num + 1] -> { #id -> #far }.
		[:num | #text -> num asString] -> { #id -> #one }.
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#far.
			[:num | num * num].
			[:num | #text -> num asString ] -> { #id -> #two }.
		} asScript.
		script adoptOrganization: far organization.
		
		self
			assert: #(one two)
			equals: (script allExtractionSteps collect: [:ea | ea id]) asArray.
			
	].