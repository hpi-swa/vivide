default instance
defaultDo: block
	"Use this whenever the default logging service is started."
	
	^ self default mutex critical: [block value: self default].