as yet unclassified
outline

	^ {
	{#systemCategories. self listViewCreator} -> {
		[:categorizer | categorizer categories
			collect: [:category | category -> categorizer]].
		[:binding | #text -> binding key]
	}.
	{#classes. self listViewCreator} -> {
		[:binding | binding value listAtCategoryNamed: binding key].
		[:className | Smalltalk at: className].
		[:class | #text -> class name]
	}.
	{#layers. self listViewCreator} -> {
		[:class | | layers |
			layers := IdentitySet new.
			(class methodDict values
				select: [:m | m isContextSMethod]) gather: [:m |
					m partialMethods collect: [:pm | layers add: pm layers first]].
			{'-- base --'}, layers asOrderedCollection sorted
				collect: [:layer | layer -> class]].
		[:binding | #text -> binding key]
	}.
	{#protocols. self listViewCreator} -> {
		[:binding | 
			{ClassOrganizer allCategory}, binding value organization categories sorted select: [:category | true
"				binding key = '-- all --'
					or: [(category includesSubstring: binding key caseSensitive: true)
						or: [(category endsWith: ')') not ]]"]
				thenCollect: [:category | category -> {binding value.binding key}]].
		[:binding | #text -> binding key]
	}.
	{#methods. self listViewCreator} -> {
		[:binding | (binding key = ClassOrganizer allCategory
			ifTrue: [binding value first organization allMethodSelectors]
			ifFalse: [binding value first organization listAtCategoryNamed: binding key])
			select: [:selector | 
				
				binding value second = '-- base --'
					or: [(selector includesSubstring: binding value second caseSensitive: true)]

				
				
				]
			thenCollect: [:selector | 
				| stripped method |
				stripped := (selector findTokens: ' ') first asSymbol.
				method := binding value first >> stripped.
				stripped size = selector size
					ifTrue: [method isContextSMethod
						ifFalse: [method]
						ifTrue: ["base method" method baseMethod]]
					ifFalse: [(method partialMethods detect: [:pm | pm layers first = binding value second]) method].
				
				
				]].
		[:method | {#text -> method selector. #icon -> ((method literalStrings anySatisfy: [:literal | literal startsWith: #proceed])
		ifTrue: [UiFugueIcons control000SmallIcon] ifFalse: [ViIconService blankIcon])}]
	}.
	}