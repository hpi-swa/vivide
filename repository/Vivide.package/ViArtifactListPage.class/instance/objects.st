accessing - objects
objects

	self flag: #hideCollections. "mt: There should be no difference from an interaction perspective."
	^ ViQueryFillStep new
		objects: ((self artifactContainerColumn artifactContainers
			collect: [:artifactContainer | artifactContainer object])
			reject: [:obj | obj isNil]);
		flattenedObjects