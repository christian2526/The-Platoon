

if ((town_a_done == "false") && (tsk_town_a_done_bfor_control == "false")) then {
  _trg = createTrigger ["EmptyDetector", getMarkerPos "mkr_clear_town_a"];
  _trg setTriggerArea [250, 250, 0, false];
  _trg setTriggerActivation ["BLUFOR", "NOT PRESENT", false];
  _trg setTriggerStatements ["this", "hint 'It works'", ""];

  {
    deletevehicle _x;
  }forEach nearestObjects [(getMarkerPos "mkr_clear_town_a"),[],250];
  sleep 1.123;
  /*To delete Vehicle Crews easily*/
  {
    deletevehicle _x;
  }forEach nearestObjects [(getMarkerPos "mkr_clear_town_a"),[],250];
};

task_driveToOutpost setTaskState "Succeeded";
["TaskSucceeded",["You have reached the Outpost."]] call bis_fnc_showNotification;
task_loadPatient = player createSimpleTask ["loadPatient", task_overall];
task_loadPatient setSimpleTaskDescription ["Load both Patients into the M113 Medevac.", "Load Patients", "Load"];
task_loadPatient setSimpleTaskDestination (getPos mev);
["TaskAssigned",["Load both patients"]] call bis_fnc_showNotification;

player setCurrentTask task_loadPatient;


waitUntil {(med_1 in mev) && (med_2 in mev)};

task_loadPatient setTaskState "Succeeded";
["TaskSucceeded",["The patients have been loaded."]] call bis_fnc_showNotification;
