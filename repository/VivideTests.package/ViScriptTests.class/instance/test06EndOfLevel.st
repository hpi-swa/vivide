tests - recursion
test06EndOfLevel

	| one two three four |
	one := {
		[:num | num * num] -> {#id -> #first}.
		[:num | #text -> num asString].
		} asScript.
	self
		assert: one next isEndOfLevel;
		deny: one isEndOfLevel.

	ViActiveScriptOrganizer value: one organization during: [
		two := {
			[:num | num * num] -> {#id -> #second}
			} asScript.
		two adoptOrganization: one organization.
		self assert: two isEndOfLevel.

		three := {
			#first -> {#id -> #third}.
			} asScript.
		three adoptOrganization: one organization.
		self assert: three isEndOfLevel.

		four := {
			#first -> {#id -> #fourth}.
			[:num | #text -> num printString].
			} asScript.
		four adoptOrganization: one organization.
		self deny: four isEndOfLevel.
		self assert: four next isEndOfLevel.
	].