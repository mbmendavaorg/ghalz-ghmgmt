using './main.bicep'

// General Parameters
param parLocations = [
  'uksouth'
  'ukwest'
]
param parEnableTelemetry = true

param legacyConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'ww-legacy'
  managementGroupParentId: 'ww-alz'
  managementGroupIntermediateRootName: 'ww-alz'
  managementGroupDisplayName: 'wwl-Legacy'
  managementGroupDoNotEnforcePolicyAssignments: ['Enforce-GR-KeyVault', 'Enforce-GR-VirtualDesk0', 'Enforce-GR-AppServices0', 'Deploy-vmArc-ChangeTrack', 'Deploy-VM-Backup']
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  'Enable-DDoS-VNET': {
    parameters: {
      ddosPlan: {
        value: '/subscriptions/361f7173-be63-47dd-86f4-1538f4de2aef/resourceGroups/rg-alz-conn-${parLocations[0]}/providers/Microsoft.Network/ddosProtectionPlans/ddos-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-AzSqlDb-Auditing': {
    parameters: {
      logAnalyticsWorkspaceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.OperationalInsights/workspaces/log-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-vmArc-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-changetracking-${parLocations[0]}'
      }
    }
  }
  'Deploy-VM-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-changetracking-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uami-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-VMSS-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-changetracking-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uami-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-vmHybr-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-vminsights-${parLocations[0]}'
      }
    }
  }
  'Deploy-VM-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-vminsights-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uami-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-VMSS-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-vminsights-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uami-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-MDFC-DefSQL-AMA': {
    parameters: {
      userWorkspaceResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.OperationalInsights/workspaces/log-alz-${parLocations[0]}'
      }
      dcrResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-alz-mdfcsql-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/fdb3030b-4995-4d54-bba9-cf738c1b5761/resourceGroups/rg-alz-logging-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uami-alz-${parLocations[0]}'
      }
    }
  }
}
