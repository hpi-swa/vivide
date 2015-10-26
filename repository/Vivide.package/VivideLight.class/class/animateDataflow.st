preferences
animateDataflow
	<preference: 'Animate Dataflow'
		category: 'Vivide - Debugging'
		description: 'In enabled, let''s you observe dataflow visually'
		type: #Boolean>
	^ AnimateDataflow ifNil: [false]