accessing
protocol

	^ ViProtocol
		named: (self theClass organization categoryOfElement: self selector)
		inClass: self theClass