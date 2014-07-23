as yet unclassified
defNotifyChangedMethods

	^ (ViQueryOrganizer default definitionById: #notifyChangedMethods) ifNil: [
		ViQueryUpdateDefinition new
			id: #notifyChangedMethods;
			sourceCode: '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:]';
			register;
			yourself]