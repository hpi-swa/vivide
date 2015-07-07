as yet unclassified
specialProperties
	"Returns a list of properties to NOT store in object---partially if it is the default value.
	
	property -> <list of default values, nil means all of them>"
		
	^ Dictionary newFrom: {
		#modelClass -> {ViQueryNode}.
		#creationAuthor -> nil. "skipped/preserved"
		#creationTimeStamp -> nil. "skipped/preserved"
		#copyOf -> nil. "skipped/preserved"
		"#inputKind -> {Object}.
		#outputKind -> {Object}."
		#isProperty -> {false}.
		#isReference -> {false}.
		#view -> (ViProfile active ifNotNil: #defaultView) asList.
		#in -> {OrderedCollection}.
		#out -> {OrderedCollection}.
		#async -> {false}.
		#isNew -> nil.
		}