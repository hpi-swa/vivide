actions
openScript
	"Open a pane with thisStep as script and the derived input, which may not be the one above all script editors but the results of other script steps if this is not the first step."
	
	self thisStep openScriptWith: self input.