class initialization
classpath
	" self classpath "
	^ ([:c| c isControlOther] split:
			'
			/Users/dmason/fs/Minecrafter/Bar.class
			/Users/dmason/fs/Minecrafter/F.class
			/Users/dmason/fs/Minecrafter/Foo.class
			/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home/jre/lib/rt.jar
			/Users/dmason/Desktop/AdventuresInMinecraft-Mac/Server/craftbukkit.jar
			'
		) select: #isNotEmpty