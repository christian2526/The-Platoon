/*Init some Variables*/
town_a_done = "false"; publicVariable "town_a_done";
tsk_town_a_done_bfor_control = "false"; publicVariable "tsk_town_a_done_bfor_control";

/*Create Tasks*/
task_overall = player createSimpleTask ["overall"];
task_overall setSimpleTaskDescription ["Recover injuried United Nations Blue Helmet Soldiers to our Field Hospital at FARP Winchester.", "Recover Personel", ""];
task_overall setTaskState "Assigned";

task_driveToOutpost = player createSimpleTask ["driveToOutpost", task_overall];
task_driveToOutpost setSimpleTaskDescription ["Drive to the UN-Outpost near Gravette.", "Drive to the UN-Outpost", "UN-Outpost"];
task_driveToOutpost setSimpleTaskDestination (getMarkerPos "mkr_task_un_outpost");
player setCurrentTask task_driveToOutpost;
["TaskAssigned",["Drive to the UN-Outpost"]] call bis_fnc_showNotification;
