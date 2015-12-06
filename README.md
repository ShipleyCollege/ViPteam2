# team2
Merge model data with OpenSCAD templates to create 3D models

To date there are the following templates available;


<h1>Unreal Engine 4 Blueprint nodes:</h1>
These nodes can be created by hand or by the Python script developed by team1. This script builds the models from the Blueprint editors clipboard.


BPValue - This template is used to create a 3D model containing text on one side and Braille on the other.

<table border="1">
	<tr>
		<td>printValue(text);</td><td>this will print the text parameter as Braille and text.<td>
	</td>
</table>

BPNode - This template is used to create 3D model of a Blueprint node from Unreal Engine 4's Blueprint editor.

<table border="1">
	<tr>
		<td>numLines = n</td><td>This is used to calculate the depth of the model</td>
	</tr><tr>
		<td>longestLine = text</td><td>This is used to calculate the width of the model</td>
	</tr><tr>
		<td>drawBase(title)</td><td>This will create the base and add the given title at the top on the model</td>
	</tr><tr>
		<td colspan="2">in the following, line is the literal 'line1, line2, line3 etc' and left | right indicates if the pin is on the left or right of the node.</td>
	</tr><tr>
		<td>executePin(line, left | right)</td><td>created an execute pin, with hole for a connector to be inserted.</td>
	</tr><tr>
		<td>executePinRightWithText(line, text)</td><td>create an execution pin, with hole.</td>
	</tr><tr>
		<td>executePinLeftWithText(line, text)</td><td>create an execution pin, with hole.</td>
	</tr><tr>
		<td>leftPin(line, text)</td><td>create a data pin, with hole.</td>
	</tr><tr>
		<td>rightPin(line, text)</td><td>create a data pin, with hole.</td>
	</tr>
</table>

** TO DO **

New template for BPVariable, which will copy the shape of a variable node in Blueprint.


<h1>Flowchart Nodes:</h1>
These nodes can be created by hand or by exporting a flowchart from LucidChart.

<table border="1">
	<tr>
		<td>FCProcess</td><td>his will create a process box.</td>
	</tr><tr>
		<td>FCDecision</td><td>This will create a decision diamond.</td>
	</tr>
</table>

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




