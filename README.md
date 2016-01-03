# team2
Merge model data with OpenSCAD templates to create 3D models

To date there are the following templates available;

<h1>Text and Braille</h1>
This tempalte can be used to print both text and braille on an inverted 'V' shape

brailleAndText - print from the following characters;
AbCdEfGhIjKlMnOpQrStUvWxYz0123456789,.;:'\"!?/()

<table border="1">
	<tr>
		<td>printTextAndBraille(text);</td><td>This will print the text parameter as Braille and text, including numberic escape sequences, as required.</td>
	</tr><tr>
		<td>printEscappedTextAndBraille(text);</td><td>this will print the text parameter as Braille and text, with no escape characters added.</td>
	</tr>
</table>


<h1>Unreal Engine 4 Blueprint nodes:</h1>
These nodes can be created by hand or by the Python script developed by team1. This script builds the models from the Blueprint editors clipboard.


BPVariable - This template is used to create a 3D model representing a BluePrint variable get or set node, containing text for the variable name on one side and Braille on the other.

<table border="1">
	<tr>
		<td>getVariable(varableName);</td><td>this will print a get variable node with the name as Braille and text.</td>
	</tr><tr>
		<td>setVariable(varableName);</td><td>this will print a set variable node with the name as Braille and text.</td>
	</tr>
</table>

BPValue - This template is used to create a 3D model containing text on one side and Braille on the other.

<table border="1">
	<tr>
		<td>printValue(text);</td><td>this will print the text parameter as Braille and text.</td>
	</tr>
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
		<td>FCProcess(text)</td><td>his will create a process box, with the text printed in text and braille.</td>
	</tr><tr>
		<td>FCDecision(text)</td><td>This will create a decision diamond, with the text printed in text and braille.</td>
	</tr><tr>
		<td>JoinConnectors()</td><td>This will create a connector block, where wires can be joined together.</td>
	</tr>
</table>

<h1>Hour Of Code Nodes:</h1>
These nodes are for 2015 Hour of Code - StarWars activity, tasks 1 to 6.

<table border="1">
	<tr>
		<td>board()</td><td>Create an 8 x 8 board for the activity</td>
	</tr><tr>
		<td>testTest()</td><td>this will create a 2 x 2 test board</td>
	</tr><tr>		
		<td>tile(x, y)</td><td>create one tile at (x, y)</td>
	</tr><tr>
		<td>cog(x, y)</td><td>create a cog at (x, y), to represent scrap metal</td>
	</tr><tr>
		<td>cross(x, y)</td><td>create a cross at (x, y), to represent bandits</td>
	</tr><tr>
		<td>boxes(x, y)</td><td>create a pile of boxes at (x, y), to represent items that block your way</td>
	</tr><tr>
		<td>event(text)</td><td>create an event scratch node, with text and braille</td>
	</tr><tr>
		<td>Action(text)</td><td>create an action scratch node, with text and braille</td>
	</tr>
</table>




