private
onFinished

	receiver first ifNil: [^ self stop].
	receiver first perform: selector withArguments: (Array withAll: arguments).
	
	self isSingleShot ifFalse: [self start].