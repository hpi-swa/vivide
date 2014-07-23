nil
projects

	projects ifNil: [
		projects := Dictionary new.
		(self class get: '/projects?term=.*') ifNotNil: [:projectnames |
			projectnames do: [:nm | projects at: nm put: nil]]].
	^ projects keys