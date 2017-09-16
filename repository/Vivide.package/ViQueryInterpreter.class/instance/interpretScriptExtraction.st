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
			| propertiesToUse |
			"Automatically treat results as properties of a node. Expand if necessary. Avoids superfluous scripts."
			propertiesToUse := newProperties collect: [:thing | thing isDictionary
				ifTrue: [thing associations]
				ifFalse: [thing asList
					ifEmpty: [#()]
					ifNotEmpty: [:thingAsList | thingAsList first isVariableBinding
						ifTrue: [thingAsList]
						ifFalse: [{#object -> thing}]]]].
			
			(properties
				at: group
				ifAbsentPut: [OrderedCollection new]) add: (
					propertiesToUse collect: [:p | p collect: [:pp | ViScriptPart convertProperty: pp] ]).
					
		"Update objects according to #object or #objects property if existing. See ViQueryNode >> #inputForChildren."
		step isMeta
			ifTrue: [
				self flag: #metaScript. "mt: Sigh... See ViScriptPart >> #convertPanes:toScript:."
				transformedObjects
					at: group
					put: (propertiesToUse first detect: [:assoc | assoc key = #objects]) value.
				]
			ifFalse: [
				transformedObjects
					at: group
					put: (propertiesToUse collect: [:p | (p detect: [:assoc | assoc key = #objects]
						ifNone: [p detect: [:assoc | assoc key = #object]
							ifNone: [Error signal: 'Extraction step must not omit #object property!']]) value])
				]
		]].

	objects := transformedObjects.