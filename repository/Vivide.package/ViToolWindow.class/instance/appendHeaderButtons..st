initialization
appendHeaderButtons: someMorphs

	someMorphs reverseDo: [:m | 
		labelArea addMorphBack: m].
	
	self headerButtons addAll: someMorphs.