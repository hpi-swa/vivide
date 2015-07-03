tests
test22GroupObjectsAgain

	| q |
	q := {
		[:method | {
			method methodClass organization categoryOfElement: method selector.
			method} asTuples].
 		[:tuples | tuples asGroups].
		[:protocol :methods | #text -> protocol].
		[:group | group expandGroup].
		[:protocol :method | method].
		[:method | #text -> method selector].
	} asScript.
	sut firstStep: (ViQueryStep use: Integer methodDict values in: q).
	
	"Check for no duplicate protocols."
	self assert: sut childCount = Integer organization categories size. 
	self
		assert: Integer organization categories size + Integer methodDict size + 1 "root" 
		equals: sut allNodes size.