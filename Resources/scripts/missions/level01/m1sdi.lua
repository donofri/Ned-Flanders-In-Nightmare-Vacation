-- Developed by Thomas Donofri and Mihai Ficiu https://github.com/donofri/Ned-Flanders-In-Nightmare-Vacation
SelectMission("m1sd")

SetMissionResetPlayerOutCar("m1_ned_start","m1_ned_carstart")
SetDynaLoadData("l6r2.p3d;l6z2.p3d;l6z3.p3d;")

UsePedGroup(0)

--SetMissionStartCameraName( "mission1camShape" )
--SetMissionStartMulticontName( "mission1cam" )
--SetAnimatedCameraName( "mission1camShape" )
--SetAnimCamMulticontName( "mission1cam" )

--SetInitialWalk("l6_bart_walkto")

AddStage()
SetHUDIcon("casino")
SetStageMessageIndex(01)
AddObjective("goto")
SetDestination("m1_casino_goto","carsphere")
CloseObjective()
AddCondition( "damage" )
SetCondMinHealth( 0.0 )
SetCondTargetVehicle( "current" )
CloseCondition()
CloseStage()

AddStage(4)
	SetStageMessageIndex(02)
    RESET_TO_HERE()
	SetHUDIcon("smithers")
	AddObjective("talkto")
	    --SetPresentationBitmap( "art/frontend/dynaload/images/mis06_01.p3d" )
		AddNPC("smithers", "ambient_burns")
        AddObjectiveNPCWaypoint( "smithers", "burns_walk1" )
		AddObjectiveNPCWaypoint( "smithers", "burns_walk2" )
		AddObjectiveNPCWaypoint( "smithers", "burns_walk1" )
		SetTalkToTarget("smithers", 0, 0)
	CloseObjective()
CloseStage()


AddStage()
SetHUDIcon("smithers")
SetStageMessageIndex(11)
AddObjective("timer")
SetDurationTime(3)
CloseObjective()
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
