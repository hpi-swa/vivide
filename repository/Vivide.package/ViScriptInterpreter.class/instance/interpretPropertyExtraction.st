interpreting - private
interpretPropertyExtraction
	"Note that you can also transform objects in an extraction step via the #object resp. #objects properties."
	
	| transformedObjects |
	transformedObjects := OrderedCollection new.
	
	"Look for model class for later node creation."
	self flag: #documentation. "mt: Is this discoverable?!"
	(self next valueOfProperty: #modelClass)
		ifNotNil: [:cls | modelClass := cls].   
	
	(self next process: self objects) in: [:extractedProperties |
		| propertiesToUse |
		"Automatically treat results as properties of a node. Expand if necessary. Avoids superfluous scripts."
		propertiesToUse := extractedProperties collect: [:thing | thing isDictionary
			ifTrue: [thing associations]
			ifFalse: [thing asList
				ifEmpty: [#()]
				ifNotEmpty: [:thingAsList | thingAsList first isVariableBinding
					ifTrue: [thingAsList]
					ifFalse: [{#object -> thing}]]]].
		
		self properties add: (
				propertiesToUse collect: [:p | p collect: [:pp | ViScriptTemplate convertObjectProperty: pp] ]).
				
		"Update objects according to #object or #objects property if existing. See ViQueryNode >> #inputForChildren."
		self flag: #refactor. "mt: Same code as in #inputForChildren in model nodes!"
		transformedObjects := (propertiesToUse gather: [:p |
			(p detect: [:assoc | assoc key = #objects]
				ifFound: [:assoc | assoc value]
				ifNone: [p detect: [:assoc | assoc key = #object]
					ifFound: [:assoc | {assoc value}]
					ifNone: [Error signal: 'Extraction step must not omit #object property!']])])].

	self objects: transformedObjects.