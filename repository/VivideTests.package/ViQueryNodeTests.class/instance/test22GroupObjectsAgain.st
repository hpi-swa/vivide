tests
test22GroupObjectsAgain

	| q cats |
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
	sut
		inputForChildren: Integer methodDict values;
		firstStep: q.
	
	"There may be empty categories in the Integer class."
	cats := Integer organization categories select: [:cat |
		(Integer organization listAtCategoryNamed: cat) notEmpty].
	
	"Check for no duplicate protocols."
	self
		assert: cats size
		equals: sut childCount. 
	self
		assert: cats size + Integer methodDict size + 1 "root" 
		equals: sut allNodes size.