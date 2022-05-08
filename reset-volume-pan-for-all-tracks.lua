projectIndex = reaper.GetCurrentProjectInLoadSave()
trCount = reaper.CountTracks(projectIndex)
for i = 0,trCount-1,1
do 
   tr = reaper.GetTrack(projectIndex, i)
   reaper.SetMediaTrackInfo_Value(tr, "D_PAN", 0)
   reaper.SetMediaTrackInfo_Value(tr, "D_VOL", 1)
end

masterTr = reaper.GetMasterTrack(projectIndex)
reaper.SetMediaTrackInfo_Value(masterTr, "D_PAN", 0)
reaper.SetMediaTrackInfo_Value(masterTr, "D_VOL", 1)
