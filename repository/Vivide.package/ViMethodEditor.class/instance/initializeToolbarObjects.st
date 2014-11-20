toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #classes
		icon: UiSilkIcons carIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls |
				{cls theNonMetaClass}, cls theNonMetaClass allSuperclasses]]
		helpText: 'No associated classes found.'.

	self toolbar leftPanel
		addGroup: #methods
		icon: UiFugueIcons scriptMediumIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls |
				{cls}, cls allSuperclasses
					select: [:c | c includesSelector: editor selector]
					thenCollect: [:c | c compiledMethodAt: editor selector]]]
		helpText: 'No overridden methods found.'.

	"self toolbar leftPanel
		addGroup: #methodOverrides
		icon: UiFugueIcons scriptPencilIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls |
				(cls allSubclasses sortBy: [:c1 :c2 | c1 name <= c2 name])
					select: [:c | c includesSelector: editor selector]
					thenCollect: [:c | c compiledMethodAt: editor selector]]]
		helpText: 'No overridden methods found.'."

	self toolbar leftPanel
		addGroup: #versions
		icon: UiSilkIcons timeIcon
		contents: [:editor | (ViMethodVersion versionsOfMethod: editor reference) in: [:versions |
			| result |
			result := Dictionary new.
			versions do: [:v | result at: v stamp put: v].
			result values sorted: [:v1 :v2 | 
				(v1 stamp isNil or: [v2 stamp isNil])
					or: [v1 timeStamp >= v2 timeStamp]]]]
		helpText: 'No versions found.'.
	
	"self toolbar leftPanel
		addGroup: #tests
		icon: UiFugueIcons clipboardTaskIcon
		contents: [:editor | editor method ifNil: [#()] ifNotNil: [:m |
			m isTestMethod ifTrue: [#()] ifFalse: [
				m hasMethodExtension ifTrue: [m methodExtension tests] ifFalse: [#()]]]]
		helpText: 'No tests cover this method.'."
		
		self toolbar leftPanel
		addGroup: #bindings
		icon: UiFugueIcons blockIcon
		contents: [:editor | editor bindings]
		helpText: 'No name bindings found.'.