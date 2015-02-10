as yet unclassified
intoWorld: aWorld

	SystemChangeNotifier uniqueInstance
		notify: self ofSystemChangesOfItem: AbstractEvent methodKind change: ModifiedEvent changeKind using: #update:.

	self update: nil.