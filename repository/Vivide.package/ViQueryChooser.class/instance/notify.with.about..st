actions - private
notify: receiver with: selector about: node

	receiver perform: selector with: (node at: #state).
	self delete.