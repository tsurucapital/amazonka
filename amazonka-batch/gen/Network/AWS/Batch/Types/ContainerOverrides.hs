{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ContainerOverrides
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.ContainerOverrides where

import Network.AWS.Batch.Types.KeyValuePair
import Network.AWS.Batch.Types.ResourceRequirement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The overrides that should be sent to a container.
--
--
--
-- /See:/ 'containerOverrides' smart constructor.
data ContainerOverrides = ContainerOverrides'{_coCommand
                                              :: !(Maybe [Text]),
                                              _coEnvironment ::
                                              !(Maybe [KeyValuePair]),
                                              _coResourceRequirements ::
                                              !(Maybe [ResourceRequirement]),
                                              _coInstanceType :: !(Maybe Text),
                                              _coMemory :: !(Maybe Int),
                                              _coVcpus :: !(Maybe Int)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coCommand' - The command to send to the container that overrides the default command from the Docker image or the job definition.
--
-- * 'coEnvironment' - The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the job definition.
--
-- * 'coResourceRequirements' - The type and amount of resources to assign to a container. This overrides the settings in the job definition. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
--
-- * 'coInstanceType' - The instance type to use for a multi-node parallel job.
--
-- * 'coMemory' - This parameter is deprecated and not supported for jobs run on Fargate resources, use @ResourceRequirement@ . For jobs run on EC2 resource, the number of MiB of memory reserved for the job. This value overrides the value set in the job definition.
--
-- * 'coVcpus' - This parameter is deprecated and not supported for jobs run on Fargate resources, see @resourceRequirement@ . For jobs run on EC2 resources, the number of vCPUs to reserve for the container. This value overrides the value set in the job definition. Jobs run on EC2 resources can specify the vCPU requirement using @resourceRequirement@ but the vCPU requirements can't be specified both here and in @resourceRequirement@ . This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU.
containerOverrides :: ContainerOverrides
containerOverrides = ContainerOverrides' { _coCommand              = Nothing
                                         , _coEnvironment          = Nothing
                                         , _coResourceRequirements = Nothing
                                         , _coInstanceType         = Nothing
                                         , _coMemory               = Nothing
                                         , _coVcpus                = Nothing
                                         }

-- | The command to send to the container that overrides the default command from the Docker image or the job definition.
coCommand :: Lens' ContainerOverrides [Text]
coCommand = lens _coCommand (\s a -> s { _coCommand = a }) . _Default . _Coerce

-- | The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the job definition.
coEnvironment :: Lens' ContainerOverrides [KeyValuePair]
coEnvironment =
  lens _coEnvironment (\s a -> s { _coEnvironment = a }) . _Default . _Coerce

-- | The type and amount of resources to assign to a container. This overrides the settings in the job definition. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
coResourceRequirements :: Lens' ContainerOverrides [ResourceRequirement]
coResourceRequirements =
  lens _coResourceRequirements (\s a -> s { _coResourceRequirements = a })
    . _Default
    . _Coerce

-- | The instance type to use for a multi-node parallel job.
coInstanceType :: Lens' ContainerOverrides (Maybe Text)
coInstanceType = lens _coInstanceType (\s a -> s { _coInstanceType = a })

-- | This parameter is deprecated and not supported for jobs run on Fargate resources, use @ResourceRequirement@ . For jobs run on EC2 resource, the number of MiB of memory reserved for the job. This value overrides the value set in the job definition.
coMemory :: Lens' ContainerOverrides (Maybe Int)
coMemory = lens _coMemory (\s a -> s { _coMemory = a })

-- | This parameter is deprecated and not supported for jobs run on Fargate resources, see @resourceRequirement@ . For jobs run on EC2 resources, the number of vCPUs to reserve for the container. This value overrides the value set in the job definition. Jobs run on EC2 resources can specify the vCPU requirement using @resourceRequirement@ but the vCPU requirements can't be specified both here and in @resourceRequirement@ . This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU.
coVcpus :: Lens' ContainerOverrides (Maybe Int)
coVcpus = lens _coVcpus (\s a -> s { _coVcpus = a })

instance Hashable ContainerOverrides where

instance NFData ContainerOverrides where

instance ToJSON ContainerOverrides where
  toJSON ContainerOverrides' {..} = object
    (catMaybes
      [ ("command" .=) <$> _coCommand
      , ("environment" .=) <$> _coEnvironment
      , ("resourceRequirements" .=) <$> _coResourceRequirements
      , ("instanceType" .=) <$> _coInstanceType
      , ("memory" .=) <$> _coMemory
      , ("vcpus" .=) <$> _coVcpus
      ]
    )
