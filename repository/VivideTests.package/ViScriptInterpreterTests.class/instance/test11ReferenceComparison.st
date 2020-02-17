tests - references and stack
test11ReferenceComparison
	"There are multiple ways to create references."
	
	| far |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	
	ViActiveScriptOrganizer value: far organization during: [
		{
			"1) Convert an object collection."
			{ #far } asScript -> false.
			"2) Use the old-style #asReference interface."
			#far asScript asReference -> false.
			"3) Explicitly use #after in any other script."
			{ [:object | object] -> { #after -> #far } } asScript -> false.
	
		} do: [:scriptAndCheck |
			self
				"A) Same organization as #far?"
				assert: (scriptAndCheck value = (scriptAndCheck key organization = far organization));
				"B) Same results?"
				assert: #(1 4 9)
				equals: ((ViScriptInterpreter on: scriptAndCheck key using: #(1 2 3))
					upToExtraction;
					objects) asArray].
	].