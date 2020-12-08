{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.NetworkConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.NetworkConfiguration where

import Network.AWS.Batch.Types.AssignPublicIP
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The network configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
--
--
-- /See:/ 'networkConfiguration' smart constructor.
newtype NetworkConfiguration = NetworkConfiguration'{_ncAssignPublicIP
                                                     :: Maybe AssignPublicIP}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'NetworkConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncAssignPublicIP' - Indicates whether the job should have a public IP address. For a job running on Fargate resources in a private subnet to send outbound traffic to the internet (for example, in order to pull container images), the private subnet requires a NAT gateway be attached to route requests to the internet. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Amazon ECS task networking> . The default value is "DISABLED".
networkConfiguration :: NetworkConfiguration
networkConfiguration = NetworkConfiguration' { _ncAssignPublicIP = Nothing }

-- | Indicates whether the job should have a public IP address. For a job running on Fargate resources in a private subnet to send outbound traffic to the internet (for example, in order to pull container images), the private subnet requires a NAT gateway be attached to route requests to the internet. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Amazon ECS task networking> . The default value is "DISABLED".
ncAssignPublicIP :: Lens' NetworkConfiguration (Maybe AssignPublicIP)
ncAssignPublicIP = lens _ncAssignPublicIP (\s a -> s { _ncAssignPublicIP = a })

instance FromJSON NetworkConfiguration where
  parseJSON = withObject
    "NetworkConfiguration"
    (\x -> NetworkConfiguration' <$> (x .:? "assignPublicIp"))

instance Hashable NetworkConfiguration where

instance NFData NetworkConfiguration where

instance ToJSON NetworkConfiguration where
  toJSON NetworkConfiguration' {..} =
    object (catMaybes [("assignPublicIp" .=) <$> _ncAssignPublicIP])
