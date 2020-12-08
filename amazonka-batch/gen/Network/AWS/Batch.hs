{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Using AWS Batch, you can run batch computing workloads on the AWS Cloud. Batch computing is a common means for developers, scientists, and engineers to access large amounts of compute resources. AWS Batch utilizes the advantages of this computing workload to remove the undifferentiated heavy lifting of configuring and managing required infrastructure, while also adopting a familiar batch computing software approach. Given these advantages, AWS Batch can help you to efficiently provision resources in response to jobs submitted, thus effectively helping to eliminate capacity constraints, reduce compute costs, and deliver your results more quickly.
--
--
-- As a fully managed service, AWS Batch can run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes workload distribution based on the quantity and scale of your specific workloads. With AWS Batch, there's no need to install or manage batch computing software. This means that you can focus your time and energy on analyzing results and solving your specific problems.
--
module Network.AWS.Batch
  (
    -- * Service Configuration
    batch

    -- * Errors
    -- $errors

    -- ** ServerException
  , _ServerException

    -- ** ClientException
  , _ClientException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateComputeEnvironment
  , module Network.AWS.Batch.CreateComputeEnvironment

    -- ** ListTagsForResource
  , module Network.AWS.Batch.ListTagsForResource

    -- ** RegisterJobDefinition
  , module Network.AWS.Batch.RegisterJobDefinition

    -- ** SubmitJob
  , module Network.AWS.Batch.SubmitJob

    -- ** ListJobs (Paginated)
  , module Network.AWS.Batch.ListJobs

    -- ** TerminateJob
  , module Network.AWS.Batch.TerminateJob

    -- ** DescribeJobs
  , module Network.AWS.Batch.DescribeJobs

    -- ** DeleteComputeEnvironment
  , module Network.AWS.Batch.DeleteComputeEnvironment

    -- ** UpdateComputeEnvironment
  , module Network.AWS.Batch.UpdateComputeEnvironment

    -- ** DescribeJobDefinitions (Paginated)
  , module Network.AWS.Batch.DescribeJobDefinitions

    -- ** UpdateJobQueue
  , module Network.AWS.Batch.UpdateJobQueue

    -- ** DeleteJobQueue
  , module Network.AWS.Batch.DeleteJobQueue

    -- ** CreateJobQueue
  , module Network.AWS.Batch.CreateJobQueue

    -- ** DeregisterJobDefinition
  , module Network.AWS.Batch.DeregisterJobDefinition

    -- ** DescribeJobQueues (Paginated)
  , module Network.AWS.Batch.DescribeJobQueues

    -- ** TagResource
  , module Network.AWS.Batch.TagResource

    -- ** UntagResource
  , module Network.AWS.Batch.UntagResource

    -- ** DescribeComputeEnvironments (Paginated)
  , module Network.AWS.Batch.DescribeComputeEnvironments

    -- ** CancelJob
  , module Network.AWS.Batch.CancelJob

    -- * Types

    -- ** ArrayJobDependency
  , ArrayJobDependency(..)

    -- ** AssignPublicIP
  , AssignPublicIP(..)

    -- ** CEState
  , CEState(..)

    -- ** CEStatus
  , CEStatus(..)

    -- ** CEType
  , CEType(..)

    -- ** CRAllocationStrategy
  , CRAllocationStrategy(..)

    -- ** CRType
  , CRType(..)

    -- ** DeviceCgroupPermission
  , DeviceCgroupPermission(..)

    -- ** JQState
  , JQState(..)

    -- ** JQStatus
  , JQStatus(..)

    -- ** JobDefinitionType
  , JobDefinitionType(..)

    -- ** JobStatus
  , JobStatus(..)

    -- ** LogDriver
  , LogDriver(..)

    -- ** PlatformCapability
  , PlatformCapability(..)

    -- ** ResourceType
  , ResourceType(..)

    -- ** RetryAction
  , RetryAction(..)

    -- ** ArrayProperties
  , ArrayProperties
  , arrayProperties
  , apSize

    -- ** ArrayPropertiesDetail
  , ArrayPropertiesDetail
  , arrayPropertiesDetail
  , apdSize
  , apdStatusSummary
  , apdIndex

    -- ** ArrayPropertiesSummary
  , ArrayPropertiesSummary
  , arrayPropertiesSummary
  , apsSize
  , apsIndex

    -- ** AttemptContainerDetail
  , AttemptContainerDetail
  , attemptContainerDetail
  , acdNetworkInterfaces
  , acdTaskARN
  , acdContainerInstanceARN
  , acdReason
  , acdLogStreamName
  , acdExitCode

    -- ** AttemptDetail
  , AttemptDetail
  , attemptDetail
  , adStoppedAt
  , adStartedAt
  , adContainer
  , adStatusReason

    -- ** ComputeEnvironmentDetail
  , ComputeEnvironmentDetail
  , computeEnvironmentDetail
  , cedStatus
  , cedState
  , cedComputeResources
  , cedStatusReason
  , cedType
  , cedServiceRole
  , cedTags
  , cedComputeEnvironmentName
  , cedComputeEnvironmentARN
  , cedEcsClusterARN

    -- ** ComputeEnvironmentOrder
  , ComputeEnvironmentOrder
  , computeEnvironmentOrder
  , ceoOrder
  , ceoComputeEnvironment

    -- ** ComputeResource
  , ComputeResource
  , computeResource
  , crSecurityGroupIds
  , crInstanceTypes
  , crInstanceRole
  , crEc2KeyPair
  , crMinvCPUs
  , crEc2Configuration
  , crBidPercentage
  , crSpotIAMFleetRole
  , crImageId
  , crLaunchTemplate
  , crDesiredvCPUs
  , crAllocationStrategy
  , crPlacementGroup
  , crTags
  , crType
  , crMaxvCPUs
  , crSubnets

    -- ** ComputeResourceUpdate
  , ComputeResourceUpdate
  , computeResourceUpdate
  , cruSecurityGroupIds
  , cruSubnets
  , cruMinvCPUs
  , cruMaxvCPUs
  , cruDesiredvCPUs

    -- ** ContainerDetail
  , ContainerDetail
  , containerDetail
  , cdImage
  , cdCommand
  , cdSecrets
  , cdEnvironment
  , cdNetworkInterfaces
  , cdTaskARN
  , cdUlimits
  , cdContainerInstanceARN
  , cdExecutionRoleARN
  , cdPrivileged
  , cdJobRoleARN
  , cdResourceRequirements
  , cdInstanceType
  , cdMemory
  , cdUser
  , cdLogConfiguration
  , cdLinuxParameters
  , cdReason
  , cdLogStreamName
  , cdMountPoints
  , cdExitCode
  , cdFargatePlatformConfiguration
  , cdVcpus
  , cdReadonlyRootFilesystem
  , cdVolumes
  , cdNetworkConfiguration

    -- ** ContainerOverrides
  , ContainerOverrides
  , containerOverrides
  , coCommand
  , coEnvironment
  , coResourceRequirements
  , coInstanceType
  , coMemory
  , coVcpus

    -- ** ContainerProperties
  , ContainerProperties
  , containerProperties
  , cpImage
  , cpCommand
  , cpSecrets
  , cpEnvironment
  , cpUlimits
  , cpExecutionRoleARN
  , cpPrivileged
  , cpJobRoleARN
  , cpResourceRequirements
  , cpInstanceType
  , cpMemory
  , cpUser
  , cpLogConfiguration
  , cpLinuxParameters
  , cpMountPoints
  , cpFargatePlatformConfiguration
  , cpVcpus
  , cpReadonlyRootFilesystem
  , cpVolumes
  , cpNetworkConfiguration

    -- ** ContainerSummary
  , ContainerSummary
  , containerSummary
  , csReason
  , csExitCode

    -- ** Device
  , Device
  , device
  , dContainerPath
  , dPermissions
  , dHostPath

    -- ** EC2Configuration
  , EC2Configuration
  , ec2Configuration
  , ecImageIdOverride
  , ecImageType

    -- ** EvaluateOnExit
  , EvaluateOnExit
  , evaluateOnExit
  , eoeOnExitCode
  , eoeOnReason
  , eoeOnStatusReason
  , eoeAction

    -- ** FargatePlatformConfiguration
  , FargatePlatformConfiguration
  , fargatePlatformConfiguration
  , fpcPlatformVersion

    -- ** Host
  , Host
  , host
  , hSourcePath

    -- ** JobDefinition
  , JobDefinition
  , jobDefinition
  , jddStatus
  , jddPropagateTags
  , jddRetryStrategy
  , jddPlatformCapabilities
  , jddParameters
  , jddTimeout
  , jddContainerProperties
  , jddNodeProperties
  , jddTags
  , jddJobDefinitionName
  , jddJobDefinitionARN
  , jddRevision
  , jddType

    -- ** JobDependency
  , JobDependency
  , jobDependency
  , jJobId
  , jType

    -- ** JobDetail
  , JobDetail
  , jobDetail
  , jdStoppedAt
  , jdJobARN
  , jdPropagateTags
  , jdCreatedAt
  , jdRetryStrategy
  , jdAttempts
  , jdPlatformCapabilities
  , jdStartedAt
  , jdDependsOn
  , jdContainer
  , jdNodeDetails
  , jdParameters
  , jdStatusReason
  , jdArrayProperties
  , jdTimeout
  , jdNodeProperties
  , jdTags
  , jdJobName
  , jdJobId
  , jdJobQueue
  , jdStatus
  , jdJobDefinition

    -- ** JobQueueDetail
  , JobQueueDetail
  , jobQueueDetail
  , jqdStatus
  , jqdStatusReason
  , jqdTags
  , jqdJobQueueName
  , jqdJobQueueARN
  , jqdState
  , jqdPriority
  , jqdComputeEnvironmentOrder

    -- ** JobSummary
  , JobSummary
  , jobSummary
  , jsStoppedAt
  , jsStatus
  , jsJobARN
  , jsCreatedAt
  , jsStartedAt
  , jsContainer
  , jsStatusReason
  , jsArrayProperties
  , jsNodeProperties
  , jsJobId
  , jsJobName

    -- ** JobTimeout
  , JobTimeout
  , jobTimeout
  , jtAttemptDurationSeconds

    -- ** KeyValuePair
  , KeyValuePair
  , keyValuePair
  , kvpValue
  , kvpName

    -- ** LaunchTemplateSpecification
  , LaunchTemplateSpecification
  , launchTemplateSpecification
  , ltsLaunchTemplateName
  , ltsLaunchTemplateId
  , ltsVersion

    -- ** LinuxParameters
  , LinuxParameters
  , linuxParameters
  , lpSharedMemorySize
  , lpInitProcessEnabled
  , lpTmpfs
  , lpSwappiness
  , lpDevices
  , lpMaxSwap

    -- ** LogConfiguration
  , LogConfiguration
  , logConfiguration
  , lcOptions
  , lcSecretOptions
  , lcLogDriver

    -- ** MountPoint
  , MountPoint
  , mountPoint
  , mpContainerPath
  , mpSourceVolume
  , mpReadOnly

    -- ** NetworkConfiguration
  , NetworkConfiguration
  , networkConfiguration
  , ncAssignPublicIP

    -- ** NetworkInterface
  , NetworkInterface
  , networkInterface
  , niIpv6Address
  , niPrivateIPv4Address
  , niAttachmentId

    -- ** NodeDetails
  , NodeDetails
  , nodeDetails
  , ndNodeIndex
  , ndIsMainNode

    -- ** NodeOverrides
  , NodeOverrides
  , nodeOverrides
  , noNumNodes
  , noNodePropertyOverrides

    -- ** NodeProperties
  , NodeProperties
  , nodeProperties
  , npNumNodes
  , npMainNode
  , npNodeRangeProperties

    -- ** NodePropertiesSummary
  , NodePropertiesSummary
  , nodePropertiesSummary
  , npsNumNodes
  , npsNodeIndex
  , npsIsMainNode

    -- ** NodePropertyOverride
  , NodePropertyOverride
  , nodePropertyOverride
  , npoContainerOverrides
  , npoTargetNodes

    -- ** NodeRangeProperty
  , NodeRangeProperty
  , nodeRangeProperty
  , nrpContainer
  , nrpTargetNodes

    -- ** ResourceRequirement
  , ResourceRequirement
  , resourceRequirement
  , rrValue
  , rrType

    -- ** RetryStrategy
  , RetryStrategy
  , retryStrategy
  , rsEvaluateOnExit
  , rsAttempts

    -- ** Secret
  , Secret
  , secret
  , sName
  , sValueFrom

    -- ** Tmpfs
  , Tmpfs
  , tmpfs
  , tMountOptions
  , tContainerPath
  , tSize

    -- ** Ulimit
  , Ulimit
  , ulimit
  , uHardLimit
  , uName
  , uSoftLimit

    -- ** Volume
  , Volume
  , volume
  , vName
  , vHost
  )
where

import Network.AWS.Batch.CancelJob
import Network.AWS.Batch.CreateComputeEnvironment
import Network.AWS.Batch.CreateJobQueue
import Network.AWS.Batch.DeleteComputeEnvironment
import Network.AWS.Batch.DeleteJobQueue
import Network.AWS.Batch.DeregisterJobDefinition
import Network.AWS.Batch.DescribeComputeEnvironments
import Network.AWS.Batch.DescribeJobDefinitions
import Network.AWS.Batch.DescribeJobQueues
import Network.AWS.Batch.DescribeJobs
import Network.AWS.Batch.ListJobs
import Network.AWS.Batch.ListTagsForResource
import Network.AWS.Batch.RegisterJobDefinition
import Network.AWS.Batch.SubmitJob
import Network.AWS.Batch.TagResource
import Network.AWS.Batch.TerminateJob
import Network.AWS.Batch.Types
import Network.AWS.Batch.UntagResource
import Network.AWS.Batch.UpdateComputeEnvironment
import Network.AWS.Batch.UpdateJobQueue
import Network.AWS.Batch.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'Batch'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
