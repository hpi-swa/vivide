self nodesDo: [:node | node at: #weight put: (node nodes inject: (node at: #weight ifAbsent: [0]) into: [:sum :each | sum + (each at: #weight)])].

(ViTreeMapLayout new compute: self)
	openInHand.