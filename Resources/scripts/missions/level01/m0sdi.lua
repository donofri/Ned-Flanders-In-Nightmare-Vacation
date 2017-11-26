-- Developed by Thomas Donofri and Mihai Ficiu https://github.com/donofri/Ned-Flanders-In-Nightmare-Vacation
SelectMission("m0sd")

SetMissionResetPlayerOutCar("m0_ned_loc","m0_ned_car_loc")
SetDynaLoadData("l6z5.p3d;l6r5.p3d;l6r4.p3d;")

UsePedGroup(0)

--SetMissionStartCameraName( "mission1camShape" )
--SetMissionStartMulticontName( "mission1cam" )
--SetAnimatedCameraName( "mission1camShape" )
--SetAnimCamMulticontName( "mission1cam" )

--SetInitialWalk("l6_bart_walkto")

--AddStage()
--AddObjective("dummy")
--CloseObjective()
--CloseStage()

AddStage()
	SetStageMessageIndex(01)
	AddObjective("getin")
		SetObjTargetVehicle("current")
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
