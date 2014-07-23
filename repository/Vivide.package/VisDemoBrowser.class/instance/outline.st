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
	{#protocols. self listViewCreator} -> {
		[:class | ({ClassOrganizer allCategory}, class organization categories sorted)
			collect: [:category | category -> class]].
		[:binding | #text -> binding key]
	}.
	{#methods. self listViewCreator} -> {
		[:binding | (binding key = ClassOrganizer allCategory
			ifTrue: [binding value organization allMethodSelectors]
			ifFalse: [binding value organization listAtCategoryNamed: binding key])
			collect: [:selector | MethodReference class: binding value selector: selector]].
		[:ref | #text -> ref selector]
	}.
	}