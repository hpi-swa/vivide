interpreting - private
interpretScriptExtraction
	"Note that you can also transform objects in an extraction step via the #object resp. #objects properties."
	
	| transformedObjects |
	transformedObjects := Dictionary new.
	
	"Look for model class for later node creation."
	(step valueOfProperty: #modelClass)
		ifNotNil: [:cls | modelClass := cls].   
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects) in: [:newProperties |
			(properties
				at: group
				ifAbsentPut: [OrderedCollection new]) add: (
					newProperties collect: [:p | p collect: [:pp | ViScriptPart convertProperty: pp] ]).
					
		"Update objects according to #object or #objects property if existing. See ViQueryNode >> #inputForChildren."
		step isMeta
			ifTrue: [
				self flag: #metaScript. "mt: Sigh... See ViScriptPart >> #convertPanes:toScript:."
				transformedObjects
					at: group
					put: (newProperties first detect: [:assoc | assoc key = #objects]) value.
				]
			ifFalse: [
				transformedObjects
					at: group
					put: (newProperties collect: [:p | (p detect: [:assoc | assoc key = #objects]
						ifNone: [p detect: [:assoc | assoc key = #object]
							ifNone: [Error signal: 'You must not drop object references!']]) value])
				]
		]].

	self objectsCache at: step put: objects values concatenation. "store input not results"
	objects := transformedObjects.