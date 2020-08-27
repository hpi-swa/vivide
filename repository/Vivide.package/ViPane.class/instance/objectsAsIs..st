accessing - kernel
objectsAsIs: someObjects

	self model inputForChildren: someObjects.
	self objectsChanged: self objects.
	self script ifNil: [
		self script: [:object | { #object -> object }] asScript].