///ClusterMoles

with mPlotController {
if instance_exists(oMoleHerd) {
if Clusters < MaxClusters {
while CandidateFound = false {
for (i = 0; i < MaxRetries; i++) {
if CandidateFound = false {
CandidateCluster = instance_find(oMoleHerd, irandom(instance_number(oMoleHerd) -1))
if CandidateCluster.SeedClusterer = false
and CandidateCluster.State != "clustering" 
and CandidateCluster.Loneliness < 20
and CandidateCluster.Hunger < 20
and CandidateCluster.Activated = true
{
CandidateFound = true 
CandidateCluster.SeedClusterer = true 
CandidateCluster.State = "clustering"
CandidateCluster.BabyTimer = random_range(CandidateCluster.BabyCreateLower,CandidateCluster.BabyCreateHigher)
Clusters += 1
}
}
}
CandidateFound = true
}
}

CandidateFound = false
}
}
