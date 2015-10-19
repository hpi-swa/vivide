as yet unclassified
project: name

	projects ifNil: [self projects].
	^ (projects at: name) ifNil: [
		(self class get: '/projects/', name)
			ifNil: ["I tried it!" projects at: name put: #notFound]
			ifNotNil: [:project |
			projects at: name put: project.
			^ project]]