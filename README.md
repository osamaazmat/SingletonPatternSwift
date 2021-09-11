# SingletonPatternSwift
An easy representation of how Singleton Design Pattern works in swift.

When the user requires to create a shareable recourse that can be used
throughout the code, Singleton Design Pattern comes into play.
 
It solves alot of problems, some are:
 
 -  For providing a global point of access for data and funcionality
 -  It Reduces the memory footprint of the app as only one instance is
    available in the memory.
 
A common example could be a UserManager singleton which is used to
provide basic information throughout the code.
 
Important points to be noted:
 
 -  We keep the Singleton class as Final so it cant be extended. Thus
    it also provides us with Static Dispatch thus is very efficient
 -  We keep the initializer private so the Singleton cannot be instantiated
    from outside the Singleton, thus ensuring that only one instance is
    available throughout
