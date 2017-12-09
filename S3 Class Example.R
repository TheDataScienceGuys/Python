sound<-function(x)UseMethod("sound",x)

eat<-function(x)UseMethod("eat",x)

#Methods are defined with a naming convention:generic.class:

sound.dog<-function(x)"bark"

sound.cow<-function(x)"moo"

sound.cat<-function(x)"meaav"

sound.default<-function(x)"animalsound"



eat.dog<-function(x)"bones"

eat.cow<-function(x)"milk"

eat.cat<-function(x)"pullu"

eat.default<-function(x)"animalfood"



#The methods function can find out which classes a generic function was designed for.

methods("sound")

#[1]sound.cowsound.defaultsound.dog

#R looks for methods in the order in which they appear in the class vector 
#until it found the appropriate method to operate on.

x<-structure("mycow",class=c("cow"))

sound(x)

eat(x)

x<-structure("mydog",class=c("dog","cow","cat"))

sound(x)

#[1]"bark"

#Theclassescat,cowanddogareininheritanceorder

#dogistheparentofcowwhichisparentofcat

x<-structure("mycat",class=c("cat","cow","dog"))

sound(x)



#usethenextclassintheinheritanceorder.Inthiscasecow

sound.cat<-function(x)NextMethod()

sound(x)

