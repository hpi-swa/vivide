as yet unclassified
defNotifyClassReorganized

	^ (ViQueryOrganizer default definitionById: #notifyClassReorganized) ifNil: [
		ViQueryUpdateDefinition new
			id: #notifyClassReorganized;
			sourceCode: '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent classKind change: ReorganizedEvent changeKind using: #refresh:]';
			register;
			yourself]