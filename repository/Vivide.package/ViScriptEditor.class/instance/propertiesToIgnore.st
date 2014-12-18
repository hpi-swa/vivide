as yet unclassified
propertiesToIgnore
	"Returns a list of properties to NOT store in object---partially if it is the default value.
	
	property -> <list of default values, nil means all of them>"
	
	self flag: #refactor. "mt: Store in query classes?"
	
	^ Dictionary newFrom: {
		#modelClass -> {ViQueryNode}.
		#creationAuthor -> nil. "skipped/preserved"
		#creationTimeStamp -> nil. "skipped/preserved"
		#copyOf -> nil. "skipped/preserved"
		#inputKind -> {Object}.
		#outputKind -> {Object}.
		#isProperty -> {false}.
		#view -> {ViTreePlainView}.
		#in -> {OrderedCollection}.
		#out -> {OrderedCollection}.
		#async -> {false}.
		#isNew -> nil.
		}