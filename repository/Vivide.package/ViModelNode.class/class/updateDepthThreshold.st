as yet unclassified
updateDepthThreshold

	<preference: 'Update Depth Threshold'
		categoryList: #(Vivide)
		description: 'Determines the the tree depth at which nodes still watch for changed scripts or are responsive to notifiers. The user may experience a slow-down if value is too high.'
		type: #Number>

	^ UpdateDepthThreshold ifNil: [5]