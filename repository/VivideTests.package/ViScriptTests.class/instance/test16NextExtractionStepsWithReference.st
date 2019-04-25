tests - enumeration
test16NextExtractionStepsWithReference

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
			assert: #(one)
			equals: (script nextExtractionSteps collect: [:ea | ea id]) asArray.
			
	].