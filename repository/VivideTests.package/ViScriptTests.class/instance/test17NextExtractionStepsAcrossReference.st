tests - enumeration
test17NextExtractionStepsAcrossReference
	"If extraction steps are merged, they are merged across references."
	
	| script far |
	far := {
		[:num | num + 1] -> { #id -> #far }.
		[:num | #text -> num asString] -> { #id -> #one }.
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#far.
			[:num | #text -> num asString ] -> { #id -> #two }.
		} asScript.
		script adoptOrganization: far organization.
		
		self
			assert: #(one two)
			equals: (script nextExtractionSteps collect: [:ea | ea id]) asArray.
			
	].