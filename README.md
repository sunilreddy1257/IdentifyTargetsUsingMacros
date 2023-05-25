# IdentifyTargetsUsingMacros
Created different Targets in Xcode, we have to identify target and will given different view background colour for different target

Requirement: Based on building Target, have to change view controller and label text.

Steps:
- Duplicate targets 
- Edit Schme change the names
- Tap on Target -> Build Settings -> Swift Complier - Custom Flags -> Other Swift Flags -> Enter Name (Example: -DQA, -DPROD)
- You have to set names for all targets
- Remaining Refer in Code
