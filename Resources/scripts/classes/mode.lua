-- Credit to Loren Goodwin
Mode = {}

Mode.Current = GetSetting("Difficulty") + 1

Mode.Easy = 1
Mode.Normal = 2
Mode.Hard = 3

Mode.IsEasy = Mode.Current == Mode.Easy
Mode.IsNormal = Mode.Current == Mode.Normal
Mode.IsHard = Mode.Current == Mode.Hard
