using './main-rbac.bicep'

param parPlatformManagementGroupName = 'ww-platform'
param parConnectivityManagementGroupName = 'ww-connectivity'
param parManagementGroupExcludedPolicyAssignments = []
param parEnableTelemetry = true
