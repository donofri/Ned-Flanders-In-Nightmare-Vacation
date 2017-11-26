-- Developed by Thomas Donofri and Mihai Ficiu https://github.com/donofri/Ned-Flanders-In-Nightmare-Vacation
SelectMission("bm1")

SetMissionResetPlayerInCar("bm1_wigcar")
SetDynaLoadData("l6z3.p3d;l6r2.p3d;l6r3.p3d;")
InitLevelPlayerVehicle("wiggu_v","bm1_wigcar","OTHER")

UsePedGroup(1)
SetForcedCar()

--AddStage(0)
--	RESET_TO_HERE()
--	SetStageMessageIndex(180)
--	SetHUDIcon( "kburger" )
--	AddObjective( "goto" )
--		AddStageVehicle("wiggu_v","bm1_wiggum_carstart","NULL","Missions\\level06\\BM1dest.con", "wiggum")
--		SetDestination( "bm_krustyburger", "carsphere")
--		--SetCollectibleEffect("wrench_collect")
--	CloseObjective()
--	ShowStageComplete()
--CloseStage()

AddStage(0)
    SetPresentationBitmap( "art/frontend/dynaload/images/mis06_08.p3d" )
	RESET_TO_HERE()
SetStageMessageIndex(01)
SetHUDIcon("kamp")
AddObjective("goto")
AddStageVehicle("snake_v","bm1_snake","NULL","Missions\\level06\\BM1dest.con", "snake")
SetDestination("bm1_kamp","carsphere")
CloseObjective()
SetStageTime(95)
AddCondition("timeout")
CloseCondition()

AddStage()
SetHUDIcon("snake_v")
ActivateVehicle("snake_v","NULL","evade")
SetStageMessageIndex(02)
AddStageWaypoint("bm1_wp_1")
AddStageWaypoint("bm1_wp_2")
AddStageWaypoint("bm1_wp_3")
--AddStageWaypoint("bm1_wp_4")
SetStageMessageIndex(02)
AddObjective("follow")
SetObjTargetVehicle("snake_v")
CloseObjective()
AddCondition("followdistance")
if Mode.IsEasy then
	SetFollowDistances(0, 250)
else
	SetFollowDistances(0, 200)
end
		SetCondTargetVehicle("snake_v")
	CloseCondition()
CloseStage()	

AddStage(1)
	AddObjective("timer")
		RemoveDriver("snake")
		StayInBlack()
		SetDurationTime(1)
	CloseObjective()
CloseStage()

AddStage(0) -- destroy the laser stands
--	RESET_TO_HERE()
	SetStageMessageIndex(03)
--	SetHUDIcon( "lasersta" )
	AddObjective("delivery", "neither")
	if Mode.IsEasy then
		AddCollectible("bm1_trash_1","litter") AddCollectible("bm1_trash_2","litter") AddCollectible("bm1_trash_3","litter") AddCollectible("bm1_trash_4","litter") AddCollectible("bm1_trash_5","litter") AddCollectible("bm1_trash_6","litter")
	else
		AddCollectible("bm1_trash_1","litter") AddCollectible("bm1_trash_2","litter") AddCollectible("bm1_trash_3","litter") AddCollectible("bm1_trash_4","litter") AddCollectible("bm1_trash_5","litter") AddCollectible("bm1_trash_6","litter") AddCollectible("bm1_trash_7","litter") AddCollectible("bm1_trash_8","litter") AddCollectible("bm1_trash_9","litter")
	end
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
	if Mode.IsNormal then
	SetStageTime(35)
	end
	if Mode.IsHard then
	SetStageTime(30)
	end
	if Mode.IsEasy then
	SetStageTime(45)
	end
	AddCondition("timeout")
		--SetHitNRun()
	CloseCondition()
--	SetCompletionDialog("showgirl","krusty")
CloseStage()

AddStage()
SetHUDIcon("hype")
SetStageMessageIndex(04)
AddObjective("goto")
SetDestination("bm1_hype","carsphere")
CloseObjective()
	SwapInDefaultCar()
	SetSwapDefaultCarLocator("bm1_car")
	SetSwapForcedCarLocator("bm1_wigcar")
	SetSwapPlayerLocator("bm1_ned_loc")
CloseStage()

AddStage("final")
AddObjective("timer")
SetDurationTime(1)
CloseObjective()
CloseStage()

CloseMission()