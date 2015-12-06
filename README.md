# team2
Merge model data with OpenSCAD templates to create 3D models

To date there are the following templates available;


<h1>Unreal Engine 4 Blueprint nodes:</h1>
These nodes can be created by hand or by the Python script developed by team1. This script builds the models from the Blueprint editors clipboard.

BPValue - This template is used to create a 3D model containing text on one side and Braille on the other.
- printValue(text);   // this will print the text parameter as Braille and text.

BPNode - This template is used to create 3D model of a Blueprint node from Unreal Engine 4's Blueprint editor.
- numLines = n        // This is used to calculate the depth of the model
- longestLine = text  // This is used to calculate the width of the model
- drawBase(title)     // This will create the base and add the given title at the top on the model
-- in the following, line is the literal 'line1, line2, line3 etc' and left | right indicates if the pin is on the left or right of the node.
- executePin(line, left | right) // created an execute pin, with hole for 0.1mm connector to be inserted.
- executePinRightWithText(line, text)
- executePinLeftWithText(line, text)

- leftPin(line, text)  // create a data pin, with hole.
- rightPin(line, text)

** TO DO **

New template for BPVariable, which will copy the shape of a variable node in Blueprint.


<h1>Flowchart Nodes:</h1>
These nodes can be created by hand or by exporting a flowchart from LucidChart.

FCProcess - This will create a process box.

FCDecision - This will create a decision diamond.


<h1>Hour Of Code Nodes:</h1>
These nodes are for 2015 Hour of Code - StarWars activity, tasks 1 to 6.

<table border="1">
	<tr>
		<td>board</td><td>Create an 8 x 8 board for the activity</td>
	</tr><tr>
		<td>testTest</td><td>this will create a 2 x 2 test board</td>
	</tr><tr>		
		<td>tile</td><td>create one tile</td>
	</tr><tr>
		<td>cog</td><td>create a cog, to represent scrap metal</td>
	</tr><tr>
		<td>cross</td><td>create a cross, to represent bandits</td>
	</tr><tr>
		<td>boxes</td><td>create a pile of boxes, to represent items that block your way</td>
	</tr><tr>
		<td>event</td><td>create an event scratch node, with text and braille</td>
	</tr><tr>
		<td>Action</td><td>create an action scratch node, with text and braille</td>
	</tr>
</table>




