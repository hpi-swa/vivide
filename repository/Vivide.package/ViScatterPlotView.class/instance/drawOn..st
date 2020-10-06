drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	"2) Draw a cross for the first 5 selected items."
	self selectedItems in: [:items |
		items size <= 3 ifTrue: [
			items do: [:item | | pt |
				pt := item center.
				aCanvas
					line: graph left @ pt y to: graph right @ pt y
					width: 1 color: Color gray;

					line: pt x @ graph top to: pt x @ graph bottom
					width: 1 color: Color gray
				
				]]].