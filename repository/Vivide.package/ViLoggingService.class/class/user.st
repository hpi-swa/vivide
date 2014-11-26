preferences
user
	<preference: 'User ID'
		category: 'Vivide - Logging'
		description: 'Identification of this Squeak image or user in logging database.'
		type: #String>
	^ User ifNil: [ User := UUID new asString copyWithoutAll: '-' ]