as yet unclassified
test22GroupObjectsAgain

	| q |
	q := ViQueryStep convertList: {
		[:method | {
			method methodClass organization categoryOfElement: method selector.
			method}] -> {CompiledMethod.{String.CompiledMethod}}.
		[:protocol :method | #text -> protocol] -> {{String.CompiledMethod}.Object}.
		[:protocol :method | method] -> {{String.CompiledMethod}.CompiledMethod}.
		[:method | #text -> method selector] -> {CompiledMethod.Object}
	}.
	sut firstStep: (ViQueryStep use: Integer methodDict values in: q).
	
	"Check for no duplicate protocols."
	self assert: sut childCount = Integer organization categories size. 