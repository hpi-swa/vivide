tests - recursion
test06IsEndOfLevelRecursive

	| far one two |
	far := {
		[:num | num * num] -> {#id -> #far}.
		[:num | #text -> num asString].
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [

		one := { #far } asScript.
		one adoptOrganization: far organization.
		self assert: one isEndOfLevel.

		two := {
			#far.
			[:num | #text -> num printString].
		} asScript.
		two adoptOrganization: far organization.
		
		self
			deny: two isEndOfLevel; "Because of continued property extraction."
			assert: two next isEndOfLevel.
	].