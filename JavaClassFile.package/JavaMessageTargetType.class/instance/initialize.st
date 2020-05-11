initialize-release
initialize
	super initialize.
	requiredInterfaces := Set new.
	classTypes := IdentitySet new.
	methodMap := JavaMethodList new.
