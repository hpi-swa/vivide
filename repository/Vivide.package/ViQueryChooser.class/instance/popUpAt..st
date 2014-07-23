actions - private
popUpAt: aPoint

	"Lazy initialization for performance speedup."
	view model ifNil: [
		view
			selectBlock: [:node | (node at: #state) in: self selectBlock];
			model: model].

	self
		borderWidth: 1;
		borderColor: (Color gray: 0.8) muchDarker;
		extent: 300@200;
		topLeft: aPoint.

	self openInWorld; redrawLater.