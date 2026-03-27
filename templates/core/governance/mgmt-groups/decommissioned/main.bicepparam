using './main.bicep'

// General Parameters
param parLocations = [
  'uksouth'
  'ukwest'
]
param parEnableTelemetry = true

param decommissionedConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'ww-decommissioned'
  managementGroupParentId: 'wwir'
  managementGroupIntermediateRootName: 'wwir'
  managementGroupDisplayName: 'wwl-Decommissioned'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['b5eb03f2-3980-47a6-a77d-778f28a4c9a5']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}


// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // Add parameter overrides here if needed for customization
}
