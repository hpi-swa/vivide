as yet unclassified
intoWorld: aWorld

	SystemChangeNotifier uniqueInstance
		notify: self ofSystemChangesOfItem: AbstractEvent methodKind change: ModifiedEvent changeKind using: #update:.

	vivide openInWorld: world.
	self update: nil.