actions
renameTo: aString

	self theClass organization
		renameCategory: self protocolname
		toBe: aString.
		
	self protocolname: aString.