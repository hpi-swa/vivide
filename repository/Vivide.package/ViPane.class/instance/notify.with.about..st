initialization - pop-up
notify: receiver with: selector about: nodes
	
	nodes do: [:node |
		receiver perform: selector with: (node at: #object)].
	self delete.