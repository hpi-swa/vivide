initialization - pop-up
notify: receiver with: selector about: node

	receiver perform: selector with: (node at: #object).
	self delete.