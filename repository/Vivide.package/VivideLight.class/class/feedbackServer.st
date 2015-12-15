preferences
feedbackServer
	<preference: 'Feedback Server'
		category: 'Vivide - Logging'
		description: 'Where are feedback reports posted to?'
		type: #String>
	^ FeedbackServer ifNil: ['http://www.hpi.uni-potsdam.de/hirschfeld/vivide-feedback/feedback']