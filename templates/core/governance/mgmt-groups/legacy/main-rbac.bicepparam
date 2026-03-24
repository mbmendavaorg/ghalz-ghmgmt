using './main-rbac.bicep'

param parLegacyManagementGroupName = 'ww-legacy'
param parPlatformManagementGroupName = 'ww-platform'
param parConnectivityManagementGroupName = 'ww-connectivity'
param parManagementGroupExcludedPolicyAssignments = []
param parEnableTelemetry = true
