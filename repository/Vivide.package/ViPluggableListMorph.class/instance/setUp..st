initialization
setUp: aScript
	"Read a script's meta-data and update my properties and maybe communication protocal with the environment."
	
	(aScript valueOfProperty: #selectionMode ifAbsent: [#single]) == #multi
		ifTrue: [self hasSingleSelection ifTrue: [self initializeForMultiSelection]]
		ifFalse: [self hasMultiSelection ifTrue: [self initializeForSingleSelection]].

	self morph borderWidth: (aScript valueOfProperty: #borderWidth ifAbsent: [1]).

	self flag: #performance. "mt: Really needed here?"		
	self reset.