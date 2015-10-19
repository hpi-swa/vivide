accessing
windowsDashboard

	^ self world submorphs detect: [:m | m class == ViWindowsDashboard] ifNone: []