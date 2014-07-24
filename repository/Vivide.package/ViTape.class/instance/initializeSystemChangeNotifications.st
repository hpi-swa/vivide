initialization
initializeSystemChangeNotifications

"	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: AbstractEvent expressionKind change: SdTraceItEvent changeKind using: #handleTraceItEvent:;
		notify: self ofSystemChangesOfItem: #test change: SdTraceItEvent changeKind using: #handleTraceItEvent:."