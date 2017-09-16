initialization
setUp: aScript
	"Read a script's meta-data and update my properties and maybe communication protocal with the environment."
	
	(aScript valueOfProperty: #styler ifAbsent: []) ifNotNil: [:styler |
		self textMorph styler: (styler isBlock
			ifTrue: [styler value]
			ifFalse: [styler isBehavior
				ifTrue: [styler new]
				ifFalse: [styler]]).
		self textMorph styler ifNotNil: [:s | s view: self textMorph]]. 
	
	(aScript valueOfProperty: #font ifAbsent: []) ifNotNil: [:font |
		self textMorph font: font value].

	self textMorph balloonText: (aScript valueOfProperty: #help ifAbsent: []).
	self textMorph wrapFlag: (aScript valueOfProperty: #wrap ifAbsent: [true]).
	self textMorph borderWidth: (aScript valueOfProperty: #borderWidth ifAbsent: [1]).


	self flag: #performance.
	self reset.