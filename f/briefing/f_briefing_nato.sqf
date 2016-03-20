// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Based on Helicopters by darkChozo.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>Competition Boundaries</font>
<br/>
Should you stray into the red-marked areas on your map, the explosive charge cunningly hidden in your aircraft will go off. Use of GPS is advised.
<br/><br/>
<font size='18'>IFF</font>
<br/>
Your jet is equipped with a state-of-the-art IFF system. BLUFOR jets will be highlighted in blue, while OPFOR jets will be highlighted in red. The IFF cannot distinguish between a manned and unmanned jet, so be careful of grounded targets.
<br/><br/>
<font size='18'>Rearmament</font>
<br/>
Should you run out of ammo, a <marker name='rearm'>rearm point</marker> can be found in the middle of the map. Suffice to say, rearming your jet in the middle of a fight will be a risky endeavour.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy the enemy before they destroy you!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
This is unacceptable. <marker name='nato'>BLUFOR</marker> and <marker name='csat'>OPFOR</marker> cannot agree on the issue of who has the best fighter pilot. Show them, Comrade!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Jets with horrible pilots inside.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Jets with magnificent pilots inside.
"]];

// ====================================================================================
