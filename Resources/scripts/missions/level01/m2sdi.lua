-- Developed by Thomas Donofri and Mihai Ficiu https://github.com/donofri/Ned-Flanders-In-Nightmare-Vacation
SelectMission("m2sd")

SetMissionResetPlayerOutCar("m0_ned_loc","m0_ned_car_loc")
SetDynaLoadData("l6z5.p3d;l6r5.p3d;l6r4.p3d;")

UsePedGroup(6)

--SetMissionStartCameraName( "mission2camShape" )
--SetMissionStartMulticontName( "mission2cam" )
--SetAnimatedCameraName( "mission2camShape" )
--SetAnimCamMulticontName( "mission2cam" )

AddStage()
--SetHUDIcon("lundry")
SetStageMessageIndex(10)
AddObjective("goto")
SetDestination("m0_motel","carsphere")
SetFadeOut(0.3)
CloseObjective()
AddCondition( "damage" )
SetCondMinHealth( 0.0 )
SetCondTargetVehicle( "current" )
CloseCondition()
CloseStage()

AddStage()
RESET_TO_HERE()
AddStageCharacter("ned","","","ned_v","m0_ned_car_loc")
AddStageVehicle("cKlimoB","m2_roadblock_1","NULL","Missions\\level06\\M2race.con")
AddStageVehicle("cKlimoC","m2_roadblock_2","NULL","Missions\\level06\\M2race.con")
AddObjective("timer")
SetDurationTime(3)
CloseObjective()
CloseStage()

AddStage()
AddObjective("timer")
SetDurationTime(2)
CloseObjective()
SetCompletionDialog("ambush")
CloseStage()

CloseMission()


--dialogue_hands_in_air
--dialogue_hands_on_hips
--dialogue_scratch_head
--dialogue_shaking_fist
--dialogue_thinking
--dialogue_yes
--dialogue_no
--dialogue_cross_arms
--dialogue_open_arm_hand_gesture
--dialogue_shake_hand_in_air
