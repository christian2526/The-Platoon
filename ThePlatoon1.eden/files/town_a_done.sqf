/*Town A done, continue to evac Un Troops */
task_clear_town_a setTaskState "Succeeded";
["TaskSucceeded",["Meaux clear"]] call bis_fnc_showNotification;
town_a_done = "true"; publicVariable "town_a_done";

sleep 3;
_taskState = taskState task_driveToOutpost;
if (!(_taskState == "Succeeded")) then {
  player setCurrentTask task_driveToOutpost;
  ["TaskUpdated",["Speed up, recover the patients!"]] call bis_fnc_showNotification;
};
