using './main-rbac.bicep'

param parCorpManagementGroupName = 'ww-corp'
param parConnectivityManagementGroupName = 'ww-connectivity'
param parManagementGroupExcludedPolicyAssignments = ['Enable-DDoS-VNET']
param parEnableTelemetry = true
