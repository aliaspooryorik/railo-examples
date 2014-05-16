<cfscript>

myQuery = query(
	col_a:["a1","a2"],
	col_b:["b1","b2"]
)

dump(GetBuiltInFunction("QueryEach"))

QueryEach(myQuery, function(struct row, numeric currentrow, query thequery){
	dump(arguments);
})

QueryEach(myQuery, function(rowasstruct, currentrow, thequery){
	echo("The value of 'col_a' for row #arguments.currentrow# is #arguments.rowasstruct.col_a#<br>");
})

</cfscript>
