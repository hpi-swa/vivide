as yet unclassified
tracingCategoriesFor: someObjects

	| cats |
	cats := OrderedCollection new.

	someObjects do: [:obj | | pkg |
		pkg := PackageOrganizer default packageOfClass: obj class ifNone: [].
		cats addAll: ((pkg notNil and: [pkg name ~= 'Morphic'])
			ifTrue: [pkg systemCategories]
			ifFalse: [#()]).
		"Add some support for widgets."
		obj == UiTestCase ifTrue: [
			self flag: #bug. "mt: No methods of tests will be traced. So no event simulation code either."
			cats addAll: (PackageInfo named: #Widgets) systemCategories.
			cats addAll: (PackageInfo named: #WidgetTests) systemCategories].
		"Add some support for custom morphs."
		(obj isKindOf: Morph) ifTrue: [cats addAll:
			#('Morphic-Kernel' 'Morphic-Layouts' 'Morphic-Windows' 'Morphic-Text Support' "'Morphic-Basic' 'Multilingual-Scanning' 'Morphic-Support'")].
		"cats add: 'System-Change Notification'"].
	^ cats asSet asOrderedCollection copyWithoutAll: #('Sight-Callgraph')