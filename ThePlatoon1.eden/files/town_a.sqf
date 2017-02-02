/* Clear Town A */
town_a_done = "false"; publicVariable "town_a_done";
tsk_town_a_done_bfor_control == "true"; publicVariable "tsk_town_a_done_bfor_control";
task_clear_town_a = player createSimpleTask ["towna"];
task_clear_town_a setSimpleTaskDescription ["Eliminate all enemy forces in Meaux", "Clear Meaux", "Clear"];
task_clear_town_a setSimpleTaskDestination (getMarkerPos "mkr_clear_town_a");
["TaskAssigned",["Clear Meaux"]] call bis_fnc_showNotification;
