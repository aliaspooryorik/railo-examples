<cfscript>

myList = "the,cat,sat,on,the,mat,at,10,O'clock,it's,true"

dump(GetBuiltInFunction("ListFilter"))

result = ListFilter(myList, function(string item, numeric index, string theList, string delimiter){
	return index mod 2
})

dump(result)


myList = "the:cat:sat:on:the:mat:at:10:O'clock:it's:true"

result = ListFilter(myList, function(string item, numeric index, string theList, string delimiter){
	return isnumeric(item)
}, ":")

dump(result)


myList = "the cat sat on the mat at 10 O'clock it's true"

result = ListFilter(list=myList, filter=function(string item, numeric index, string theList, string delimiter){
	echo(item)
	return isnumeric(item)
}, delimiter=" ", parallel=true)

dump(result)

abort;

result = ListFilter(myList, function(struct row, numeric currentrow, query thequery){
	echo("currentrow is #currentrow#<br>")
	return {col_a:"row #arguments.currentrow#", col_b:arguments.currentrow mod 2, col_d:"ignored"}
})

dump(result)

</cfscript>