initialization
appendHeaderButtons: someMorphs

	someMorphs reverseDo: [:m | 
		labelArea addMorphFront: m].
	
	self headerButtons addAll: someMorphs.