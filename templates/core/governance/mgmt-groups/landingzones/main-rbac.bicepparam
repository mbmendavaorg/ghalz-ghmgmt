using './main-rbac.bicep'

param parLandingZonesManagementGroupName = 'ww-landingzones'
param parPlatformManagementGroupName = 'ww-platform'
param parConnectivityManagementGroupName = 'ww-connectivity'
param parManagementGroupExcludedPolicyAssignments = ['Enable-DDoS-VNET']
param parEnableTelemetry = true
