using './main-rbac.bicep'

param parLandingZonesManagementGroupName = 'ww-landingzones'
param parPlatformManagementGroupName = 'ww-platform'
param parConnectivityManagementGroupName = 'ww-connectivity'
param parManagementGroupExcludedPolicyAssignments = []
param parEnableTelemetry = true
