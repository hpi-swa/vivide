as yet unclassified
reset

	| object |
	self model ifNil: [^ self].

	object := (self model nodes ifEmpty: [nil] ifNotEmpty: [:nodes | nodes first at: #object]).

	self initializeForContainerClass: (ViArtifactLookupService doObject: object).
	
	self container object: object.