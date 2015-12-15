preferences
useHorizontalLists
	<preference: 'Use Horizontal Lists'
		category: 'Vivide'
		description: 'If true, lists grow horizontally instead of vertically. Note that scripts do not have to honor this preference.'
		type: #Boolean>
	^ UseHorizontalLists ifNil: [false]