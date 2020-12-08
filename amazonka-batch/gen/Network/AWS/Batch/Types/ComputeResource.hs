{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ComputeResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.ComputeResource where

import Network.AWS.Batch.Types.CRAllocationStrategy
import Network.AWS.Batch.Types.CRType
import Network.AWS.Batch.Types.EC2Configuration
import Network.AWS.Batch.Types.LaunchTemplateSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Batch compute resource.
--
--
--
-- /See:/ 'computeResource' smart constructor.
data ComputeResource = ComputeResource'{_crSecurityGroupIds
                                        :: !(Maybe [Text]),
                                        _crInstanceTypes :: !(Maybe [Text]),
                                        _crInstanceRole :: !(Maybe Text),
                                        _crEc2KeyPair :: !(Maybe Text),
                                        _crMinvCPUs :: !(Maybe Int),
                                        _crEc2Configuration ::
                                        !(Maybe [EC2Configuration]),
                                        _crBidPercentage :: !(Maybe Int),
                                        _crSpotIAMFleetRole :: !(Maybe Text),
                                        _crImageId :: !(Maybe Text),
                                        _crLaunchTemplate ::
                                        !(Maybe LaunchTemplateSpecification),
                                        _crDesiredvCPUs :: !(Maybe Int),
                                        _crAllocationStrategy ::
                                        !(Maybe CRAllocationStrategy),
                                        _crPlacementGroup :: !(Maybe Text),
                                        _crTags :: !(Maybe (Map Text Text)),
                                        _crType :: !CRType, _crMaxvCPUs :: !Int,
                                        _crSubnets :: ![Text]}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComputeResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crSecurityGroupIds' - The Amazon EC2 security groups associated with instances launched in the compute environment. One or more security groups must be specified, either in @securityGroupIds@ or using a launch template referenced in @launchTemplate@ . This parameter is required for jobs running on Fargate resources and must contain at least one security group. (Fargate does not support launch templates.) If security groups are specified using both @securityGroupIds@ and @launchTemplate@ , the values in @securityGroupIds@ will be used.
--
-- * 'crInstanceTypes' - The instances types that may be launched. You can specify instance families to launch any instance type within those families (for example, @c5@ or @p3@ ), or you can specify specific sizes within a family (such as @c5.8xlarge@ ). You can also choose @optimal@ to select instance types (from the C, M, and R instance families) on the fly that match the demand of your job queues.
--
-- * 'crInstanceRole' - The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment. You can specify the short name or full Amazon Resource Name (ARN) of an instance profile. For example, @/ecsInstanceRole/ @ or @arn:aws:iam::/<aws_account_id>/ :instance-profile//ecsInstanceRole/ @ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html Amazon ECS Instance Role> in the /AWS Batch User Guide/ .
--
-- * 'crEc2KeyPair' - The Amazon EC2 key pair that is used for instances launched in the compute environment. You can use this key pair to log in to your instances with SSH.
--
-- * 'crMinvCPUs' - The minimum number of Amazon EC2 vCPUs that an environment should maintain (even if the compute environment is @DISABLED@ ).
--
-- * 'crEc2Configuration' - Provides information used to select Amazon Machine Images (AMIs) for instances in the compute environment. If @Ec2Configuration@ isn't specified, the default is @ECS_AL1@ .
--
-- * 'crBidPercentage' - The maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched. For example, if your maximum percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that Amazon EC2 instance. You always pay the lowest (market) price and never more than your maximum percentage. If you leave this field empty, the default value is 100% of the On-Demand price.
--
-- * 'crSpotIAMFleetRole' - The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a @SPOT@ compute environment. This role is required if the allocation strategy set to @BEST_FIT@ or if the allocation strategy isn't specified. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html Amazon EC2 Spot Fleet Role> in the /AWS Batch User Guide/ . /Important:/ To tag your Spot Instances on creation, the Spot Fleet IAM role specified here must use the newer __AmazonEC2SpotFleetTaggingRole__ managed policy. The previously recommended __AmazonEC2SpotFleetRole__ managed policy doesn't have the required permissions to tag Spot Instances. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#spot-instance-no-tag Spot Instances not tagged on creation> in the /AWS Batch User Guide/ .
--
-- * 'crImageId' - The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter is overridden by the @imageIdOverride@ member of the @Ec2Configuration@ structure.
--
-- * 'crLaunchTemplate' - The launch template to use for your compute resources. Any other compute resource parameters that you specify in a 'CreateComputeEnvironment' API operation override the same parameters in the launch template. You must specify either the launch template ID or launch template name in the request, but not both. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html Launch Template Support> in the /AWS Batch User Guide/ .
--
-- * 'crDesiredvCPUs' - The desired number of Amazon EC2 vCPUS in the compute environment. AWS Batch modifies this value between the minimum and maximum values, based on job queue demand.
--
-- * 'crAllocationStrategy' - The allocation strategy to use for the compute resource if not enough instances of the best fitting instance type can be allocated. This might be because of availability of the instance type in the Region or <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html Amazon EC2 service limits> . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html Allocation Strategies> in the /AWS Batch User Guide/ .     * BEST_FIT (default)    * AWS Batch selects an instance type that best fits the needs of the jobs with a preference for the lowest-cost instance type. If additional instances of the selected instance type aren't available, AWS Batch will wait for the additional instances to be available. If there are not enough instances available, or if the user is hitting <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html Amazon EC2 service limits> then additional jobs aren't run until currently running jobs have completed. This allocation strategy keeps costs lower but can limit scaling. If you are using Spot Fleets with @BEST_FIT@ then the Spot Fleet IAM Role must be specified.     * BEST_FIT_PROGRESSIVE    * AWS Batch will select additional instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types with a lower cost per unit vCPU. If additional instances of the previously selected instance types aren't available, AWS Batch will select new instance types.     * SPOT_CAPACITY_OPTIMIZED    * AWS Batch will select one or more instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types that are less likely to be interrupted. This allocation strategy is only available for Spot Instance compute resources. With both @BEST_FIT_PROGRESSIVE@ and @SPOT_CAPACITY_OPTIMIZED@ strategies, AWS Batch might need to go above @maxvCpus@ to meet your capacity requirements. In this event, AWS Batch never exceeds @maxvCpus@ by more than a single instance.
--
-- * 'crPlacementGroup' - The Amazon EC2 placement group to associate with your compute resources. If you intend to submit multi-node parallel jobs to your compute environment, you should consider creating a cluster placement group and associate it with your compute resources. This keeps your multi-node parallel job on a logical grouping of instances within a single Availability Zone with high network flow potential. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement Groups> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'crTags' - Key-value pair tags to be applied to EC2 resources that are launched in the compute environment. For AWS Batch, these take the form of "String1": "String2", where String1 is the tag key and String2 is the tag value—for example, { "Name": "AWS Batch Instance - C4OnDemand" }. This is helpful for recognizing your AWS Batch instances in the Amazon EC2 console. These tags can not be updated or removed after the compute environment has been created; any changes require creating a new compute environment and removing the old compute environment. These tags are not seen when using the AWS Batch @ListTagsForResource@ API operation.
--
-- * 'crType' - The type of compute environment: @EC2@ , @SPOT@ , @FARGATE@ , or @FARGATE_SPOT@ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
--
-- * 'crMaxvCPUs' - The maximum number of Amazon EC2 vCPUs that an environment can reach.
--
-- * 'crSubnets' - The VPC subnets into which the compute resources are launched. These subnets must be within the same VPC. This parameter is required for jobs running on Fargate resources, where it can contain up to 16 subnets. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> in the /Amazon VPC User Guide/ .
computeResource
  :: CRType -- ^ 'crType'
  -> Int -- ^ 'crMaxvCPUs'
  -> ComputeResource
computeResource pType_ pMaxvCPUs_ = ComputeResource'
  { _crSecurityGroupIds   = Nothing
  , _crInstanceTypes      = Nothing
  , _crInstanceRole       = Nothing
  , _crEc2KeyPair         = Nothing
  , _crMinvCPUs           = Nothing
  , _crEc2Configuration   = Nothing
  , _crBidPercentage      = Nothing
  , _crSpotIAMFleetRole   = Nothing
  , _crImageId            = Nothing
  , _crLaunchTemplate     = Nothing
  , _crDesiredvCPUs       = Nothing
  , _crAllocationStrategy = Nothing
  , _crPlacementGroup     = Nothing
  , _crTags               = Nothing
  , _crType               = pType_
  , _crMaxvCPUs           = pMaxvCPUs_
  , _crSubnets            = mempty
  }

-- | The Amazon EC2 security groups associated with instances launched in the compute environment. One or more security groups must be specified, either in @securityGroupIds@ or using a launch template referenced in @launchTemplate@ . This parameter is required for jobs running on Fargate resources and must contain at least one security group. (Fargate does not support launch templates.) If security groups are specified using both @securityGroupIds@ and @launchTemplate@ , the values in @securityGroupIds@ will be used.
crSecurityGroupIds :: Lens' ComputeResource [Text]
crSecurityGroupIds =
  lens _crSecurityGroupIds (\s a -> s { _crSecurityGroupIds = a })
    . _Default
    . _Coerce

-- | The instances types that may be launched. You can specify instance families to launch any instance type within those families (for example, @c5@ or @p3@ ), or you can specify specific sizes within a family (such as @c5.8xlarge@ ). You can also choose @optimal@ to select instance types (from the C, M, and R instance families) on the fly that match the demand of your job queues.
crInstanceTypes :: Lens' ComputeResource [Text]
crInstanceTypes =
  lens _crInstanceTypes (\s a -> s { _crInstanceTypes = a })
    . _Default
    . _Coerce

-- | The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment. You can specify the short name or full Amazon Resource Name (ARN) of an instance profile. For example, @/ecsInstanceRole/ @ or @arn:aws:iam::/<aws_account_id>/ :instance-profile//ecsInstanceRole/ @ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html Amazon ECS Instance Role> in the /AWS Batch User Guide/ .
crInstanceRole :: Lens' ComputeResource (Maybe Text)
crInstanceRole = lens _crInstanceRole (\s a -> s { _crInstanceRole = a })

-- | The Amazon EC2 key pair that is used for instances launched in the compute environment. You can use this key pair to log in to your instances with SSH.
crEc2KeyPair :: Lens' ComputeResource (Maybe Text)
crEc2KeyPair = lens _crEc2KeyPair (\s a -> s { _crEc2KeyPair = a })

-- | The minimum number of Amazon EC2 vCPUs that an environment should maintain (even if the compute environment is @DISABLED@ ).
crMinvCPUs :: Lens' ComputeResource (Maybe Int)
crMinvCPUs = lens _crMinvCPUs (\s a -> s { _crMinvCPUs = a })

-- | Provides information used to select Amazon Machine Images (AMIs) for instances in the compute environment. If @Ec2Configuration@ isn't specified, the default is @ECS_AL1@ .
crEc2Configuration :: Lens' ComputeResource [EC2Configuration]
crEc2Configuration =
  lens _crEc2Configuration (\s a -> s { _crEc2Configuration = a })
    . _Default
    . _Coerce

-- | The maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched. For example, if your maximum percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that Amazon EC2 instance. You always pay the lowest (market) price and never more than your maximum percentage. If you leave this field empty, the default value is 100% of the On-Demand price.
crBidPercentage :: Lens' ComputeResource (Maybe Int)
crBidPercentage = lens _crBidPercentage (\s a -> s { _crBidPercentage = a })

-- | The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a @SPOT@ compute environment. This role is required if the allocation strategy set to @BEST_FIT@ or if the allocation strategy isn't specified. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html Amazon EC2 Spot Fleet Role> in the /AWS Batch User Guide/ . /Important:/ To tag your Spot Instances on creation, the Spot Fleet IAM role specified here must use the newer __AmazonEC2SpotFleetTaggingRole__ managed policy. The previously recommended __AmazonEC2SpotFleetRole__ managed policy doesn't have the required permissions to tag Spot Instances. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#spot-instance-no-tag Spot Instances not tagged on creation> in the /AWS Batch User Guide/ .
crSpotIAMFleetRole :: Lens' ComputeResource (Maybe Text)
crSpotIAMFleetRole =
  lens _crSpotIAMFleetRole (\s a -> s { _crSpotIAMFleetRole = a })

-- | The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter is overridden by the @imageIdOverride@ member of the @Ec2Configuration@ structure.
crImageId :: Lens' ComputeResource (Maybe Text)
crImageId = lens _crImageId (\s a -> s { _crImageId = a })

-- | The launch template to use for your compute resources. Any other compute resource parameters that you specify in a 'CreateComputeEnvironment' API operation override the same parameters in the launch template. You must specify either the launch template ID or launch template name in the request, but not both. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html Launch Template Support> in the /AWS Batch User Guide/ .
crLaunchTemplate :: Lens' ComputeResource (Maybe LaunchTemplateSpecification)
crLaunchTemplate = lens _crLaunchTemplate (\s a -> s { _crLaunchTemplate = a })

-- | The desired number of Amazon EC2 vCPUS in the compute environment. AWS Batch modifies this value between the minimum and maximum values, based on job queue demand.
crDesiredvCPUs :: Lens' ComputeResource (Maybe Int)
crDesiredvCPUs = lens _crDesiredvCPUs (\s a -> s { _crDesiredvCPUs = a })

-- | The allocation strategy to use for the compute resource if not enough instances of the best fitting instance type can be allocated. This might be because of availability of the instance type in the Region or <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html Amazon EC2 service limits> . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html Allocation Strategies> in the /AWS Batch User Guide/ .     * BEST_FIT (default)    * AWS Batch selects an instance type that best fits the needs of the jobs with a preference for the lowest-cost instance type. If additional instances of the selected instance type aren't available, AWS Batch will wait for the additional instances to be available. If there are not enough instances available, or if the user is hitting <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html Amazon EC2 service limits> then additional jobs aren't run until currently running jobs have completed. This allocation strategy keeps costs lower but can limit scaling. If you are using Spot Fleets with @BEST_FIT@ then the Spot Fleet IAM Role must be specified.     * BEST_FIT_PROGRESSIVE    * AWS Batch will select additional instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types with a lower cost per unit vCPU. If additional instances of the previously selected instance types aren't available, AWS Batch will select new instance types.     * SPOT_CAPACITY_OPTIMIZED    * AWS Batch will select one or more instance types that are large enough to meet the requirements of the jobs in the queue, with a preference for instance types that are less likely to be interrupted. This allocation strategy is only available for Spot Instance compute resources. With both @BEST_FIT_PROGRESSIVE@ and @SPOT_CAPACITY_OPTIMIZED@ strategies, AWS Batch might need to go above @maxvCpus@ to meet your capacity requirements. In this event, AWS Batch never exceeds @maxvCpus@ by more than a single instance.
crAllocationStrategy :: Lens' ComputeResource (Maybe CRAllocationStrategy)
crAllocationStrategy =
  lens _crAllocationStrategy (\s a -> s { _crAllocationStrategy = a })

-- | The Amazon EC2 placement group to associate with your compute resources. If you intend to submit multi-node parallel jobs to your compute environment, you should consider creating a cluster placement group and associate it with your compute resources. This keeps your multi-node parallel job on a logical grouping of instances within a single Availability Zone with high network flow potential. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement Groups> in the /Amazon EC2 User Guide for Linux Instances/ .
crPlacementGroup :: Lens' ComputeResource (Maybe Text)
crPlacementGroup = lens _crPlacementGroup (\s a -> s { _crPlacementGroup = a })

-- | Key-value pair tags to be applied to EC2 resources that are launched in the compute environment. For AWS Batch, these take the form of "String1": "String2", where String1 is the tag key and String2 is the tag value—for example, { "Name": "AWS Batch Instance - C4OnDemand" }. This is helpful for recognizing your AWS Batch instances in the Amazon EC2 console. These tags can not be updated or removed after the compute environment has been created; any changes require creating a new compute environment and removing the old compute environment. These tags are not seen when using the AWS Batch @ListTagsForResource@ API operation.
crTags :: Lens' ComputeResource (HashMap Text Text)
crTags = lens _crTags (\s a -> s { _crTags = a }) . _Default . _Map

-- | The type of compute environment: @EC2@ , @SPOT@ , @FARGATE@ , or @FARGATE_SPOT@ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
crType :: Lens' ComputeResource CRType
crType = lens _crType (\s a -> s { _crType = a })

-- | The maximum number of Amazon EC2 vCPUs that an environment can reach.
crMaxvCPUs :: Lens' ComputeResource Int
crMaxvCPUs = lens _crMaxvCPUs (\s a -> s { _crMaxvCPUs = a })

-- | The VPC subnets into which the compute resources are launched. These subnets must be within the same VPC. This parameter is required for jobs running on Fargate resources, where it can contain up to 16 subnets. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> in the /Amazon VPC User Guide/ .
crSubnets :: Lens' ComputeResource [Text]
crSubnets = lens _crSubnets (\s a -> s { _crSubnets = a }) . _Coerce

instance FromJSON ComputeResource where
  parseJSON = withObject
    "ComputeResource"
    (\x ->
      ComputeResource'
        <$> (x .:? "securityGroupIds" .!= mempty)
        <*> (x .:? "instanceTypes" .!= mempty)
        <*> (x .:? "instanceRole")
        <*> (x .:? "ec2KeyPair")
        <*> (x .:? "minvCpus")
        <*> (x .:? "ec2Configuration" .!= mempty)
        <*> (x .:? "bidPercentage")
        <*> (x .:? "spotIamFleetRole")
        <*> (x .:? "imageId")
        <*> (x .:? "launchTemplate")
        <*> (x .:? "desiredvCpus")
        <*> (x .:? "allocationStrategy")
        <*> (x .:? "placementGroup")
        <*> (x .:? "tags" .!= mempty)
        <*> (x .: "type")
        <*> (x .: "maxvCpus")
        <*> (x .:? "subnets" .!= mempty)
    )

instance Hashable ComputeResource where

instance NFData ComputeResource where

instance ToJSON ComputeResource where
  toJSON ComputeResource' {..} = object
    (catMaybes
      [ ("securityGroupIds" .=) <$> _crSecurityGroupIds
      , ("instanceTypes" .=) <$> _crInstanceTypes
      , ("instanceRole" .=) <$> _crInstanceRole
      , ("ec2KeyPair" .=) <$> _crEc2KeyPair
      , ("minvCpus" .=) <$> _crMinvCPUs
      , ("ec2Configuration" .=) <$> _crEc2Configuration
      , ("bidPercentage" .=) <$> _crBidPercentage
      , ("spotIamFleetRole" .=) <$> _crSpotIAMFleetRole
      , ("imageId" .=) <$> _crImageId
      , ("launchTemplate" .=) <$> _crLaunchTemplate
      , ("desiredvCpus" .=) <$> _crDesiredvCPUs
      , ("allocationStrategy" .=) <$> _crAllocationStrategy
      , ("placementGroup" .=) <$> _crPlacementGroup
      , ("tags" .=) <$> _crTags
      , Just ("type" .= _crType)
      , Just ("maxvCpus" .= _crMaxvCPUs)
      , Just ("subnets" .= _crSubnets)
      ]
    )
