tests - copying & serialization
test07ResolveNextReferenceLazily

	| script next |
	script := [:num | num * num] asScript.
	script setNext: #notYetResolved.
	
	next := ([:num | num + 1] -> { #id -> #notYetResolved }) asScript.
	next adoptOrganization: script organization.
	
	self assert: script next == next.