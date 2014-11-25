default instance
reset

	DefaultInstance ifNotNil: [:service | service stop].
	DefaultInstance := nil.