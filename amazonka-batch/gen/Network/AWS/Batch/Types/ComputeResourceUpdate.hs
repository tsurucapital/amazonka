{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ComputeResourceUpdate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.ComputeResourceUpdate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the attributes of a compute environment that can be updated.
--
--
--
-- /See:/ 'computeResourceUpdate' smart constructor.
data ComputeResourceUpdate = ComputeResourceUpdate'{_cruSecurityGroupIds
                                                    :: !(Maybe [Text]),
                                                    _cruSubnets ::
                                                    !(Maybe [Text]),
                                                    _cruMinvCPUs ::
                                                    !(Maybe Int),
                                                    _cruMaxvCPUs ::
                                                    !(Maybe Int),
                                                    _cruDesiredvCPUs ::
                                                    !(Maybe Int)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'ComputeResourceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cruSecurityGroupIds' - The Amazon EC2 security groups associated with instances launched in the compute environment. This parameter is required for Fargate compute resources, where it can contain up to 5 security groups. This can't be specified for EC2 compute resources. Providing an empty list is handled as if this parameter wasn't specified and no changeis made.
--
-- * 'cruSubnets' - The VPC subnets that the compute resources are launched into. This parameter is required for jobs running on Fargate compute resources, where it can contain up to 16 subnets. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> in the /Amazon VPC User Guide/ . This can't be specified for EC2 compute resources. Providing an empty list will be handled as if this parameter wasn't specified and no change is made.
--
-- * 'cruMinvCPUs' - The minimum number of Amazon EC2 vCPUs that an environment should maintain.
--
-- * 'cruMaxvCPUs' - The maximum number of Amazon EC2 vCPUs that an environment can reach.
--
-- * 'cruDesiredvCPUs' - The desired number of Amazon EC2 vCPUS in the compute environment.
computeResourceUpdate :: ComputeResourceUpdate
computeResourceUpdate = ComputeResourceUpdate' { _cruSecurityGroupIds = Nothing
                                               , _cruSubnets          = Nothing
                                               , _cruMinvCPUs         = Nothing
                                               , _cruMaxvCPUs         = Nothing
                                               , _cruDesiredvCPUs     = Nothing
                                               }

-- | The Amazon EC2 security groups associated with instances launched in the compute environment. This parameter is required for Fargate compute resources, where it can contain up to 5 security groups. This can't be specified for EC2 compute resources. Providing an empty list is handled as if this parameter wasn't specified and no changeis made.
cruSecurityGroupIds :: Lens' ComputeResourceUpdate [Text]
cruSecurityGroupIds =
  lens _cruSecurityGroupIds (\s a -> s { _cruSecurityGroupIds = a })
    . _Default
    . _Coerce

-- | The VPC subnets that the compute resources are launched into. This parameter is required for jobs running on Fargate compute resources, where it can contain up to 16 subnets. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> in the /Amazon VPC User Guide/ . This can't be specified for EC2 compute resources. Providing an empty list will be handled as if this parameter wasn't specified and no change is made.
cruSubnets :: Lens' ComputeResourceUpdate [Text]
cruSubnets =
  lens _cruSubnets (\s a -> s { _cruSubnets = a }) . _Default . _Coerce

-- | The minimum number of Amazon EC2 vCPUs that an environment should maintain.
cruMinvCPUs :: Lens' ComputeResourceUpdate (Maybe Int)
cruMinvCPUs = lens _cruMinvCPUs (\s a -> s { _cruMinvCPUs = a })

-- | The maximum number of Amazon EC2 vCPUs that an environment can reach.
cruMaxvCPUs :: Lens' ComputeResourceUpdate (Maybe Int)
cruMaxvCPUs = lens _cruMaxvCPUs (\s a -> s { _cruMaxvCPUs = a })

-- | The desired number of Amazon EC2 vCPUS in the compute environment.
cruDesiredvCPUs :: Lens' ComputeResourceUpdate (Maybe Int)
cruDesiredvCPUs = lens _cruDesiredvCPUs (\s a -> s { _cruDesiredvCPUs = a })

instance Hashable ComputeResourceUpdate where

instance NFData ComputeResourceUpdate where

instance ToJSON ComputeResourceUpdate where
  toJSON ComputeResourceUpdate' {..} = object
    (catMaybes
      [ ("securityGroupIds" .=) <$> _cruSecurityGroupIds
      , ("subnets" .=) <$> _cruSubnets
      , ("minvCpus" .=) <$> _cruMinvCPUs
      , ("maxvCpus" .=) <$> _cruMaxvCPUs
      , ("desiredvCpus" .=) <$> _cruDesiredvCPUs
      ]
    )
