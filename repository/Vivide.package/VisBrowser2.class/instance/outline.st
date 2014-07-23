as yet unclassified
outline

	^ {
	{#systemCategories. self squeakListViewCreator} -> {
		[:categorizer | categorizer categories
			collect: [:category | category -> categorizer]].
		[:binding | #text -> binding key]
	}.
	{#classes. self squeakListViewCreator} -> {
		[:binding | binding value listAtCategoryNamed: binding key].
		[:className | (Smalltalk at: className) in: [:class |
			{class theNonMetaClass. class theMetaClass}]].
		[:class | #text -> class name]
	}.
	{#protocols. self squeakListViewCreator} -> {
		[:class | ({ClassOrganizer allCategory}, class organization categories)
			collect: [:category | category -> class]].
		[:binding | #text -> binding key]
	}.
	{#methods. self squeakListViewCreator} -> {
		[:binding | (binding key = ClassOrganizer allCategory
			ifTrue: [binding value organization allMethodSelectors]
			ifFalse: [binding value organization listAtCategoryNamed: binding key])
			collect: [:selector | binding value >> selector]].
		[:method | #text -> method selector]
	}.
	}