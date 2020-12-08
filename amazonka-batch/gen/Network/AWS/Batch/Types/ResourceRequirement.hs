{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ResourceRequirement
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.ResourceRequirement where

import Network.AWS.Batch.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The type and amount of a resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
--
--
--
-- /See:/ 'resourceRequirement' smart constructor.
data ResourceRequirement = ResourceRequirement'{_rrValue
                                                :: !Text,
                                                _rrType :: !ResourceType}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceRequirement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrValue' - The quantity of the specified resource to reserve for the container. The values vary based on the @type@ specified.     * type="GPU"    * The number of physical GPUs to reserve for the container. The number of GPUs reserved for all containers in a job shouldn't exceed the number of available GPUs on the compute resource that the job is launched on.     * type="MEMORY"    * For jobs running on EC2 resources, the hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places for multi-node parallel (MNP) jobs. It must be specified for each node at least once. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. For jobs running on Fargate resources, then @value@ is the hard limit (in GiB), represented in decimal form, and must match one of the supported values (0.5 and whole numbers between 1 and 30, inclusive) and the @VCPU@ values must be one of the values supported for that memory value.     * value = 0.5    * @VCPU@ = 0.25     * value = 1    * @VCPU@ = 0.25 or 0.5     * value = 2    * @VCPU@ = 0.25, 0.5, or 1     * value = 3    * @VCPU@ = 0.5, or 1     * value = 4    * @VCPU@ = 0.5, 1, or 2     * value = 5, 6, or 7    * @VCPU@ = 1 or 2     * value = 8    * @VCPU@ = 1, 2, or 4     * value = 9, 10, 11, 12, 13, 14, 15, or 16    * @VCPU@ = 2 or 4     * value = 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, or 30    * @VCPU@ = 4     * type="VCPU"    * The number of vCPUs reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places; it must be specified for each node at least once. For jobs running on Fargate resources, then @value@ must match one of the supported values and the @MEMORY@ values must be one of the values supported for that VCPU value. The supported values are 0.25, 0.5, 1, 2, and 4     * value = 0.25    * @MEMORY@ = 0.5, 1, or 2     * value = 0.5    * @MEMORY@ = 1, 2, 3, or 4     * value = 1    * @MEMORY@ = 2, 3, 4, 5, 6, 7, or 8     * value = 2    * @MEMORY@ = 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, or 16     * value = 4    * @MEMORY@ = 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, or 30
--
-- * 'rrType' - The type of resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
resourceRequirement
  :: Text -- ^ 'rrValue'
  -> ResourceType -- ^ 'rrType'
  -> ResourceRequirement
resourceRequirement pValue_ pType_ =
  ResourceRequirement' { _rrValue = pValue_, _rrType = pType_ }

-- | The quantity of the specified resource to reserve for the container. The values vary based on the @type@ specified.     * type="GPU"    * The number of physical GPUs to reserve for the container. The number of GPUs reserved for all containers in a job shouldn't exceed the number of available GPUs on the compute resource that the job is launched on.     * type="MEMORY"    * For jobs running on EC2 resources, the hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places for multi-node parallel (MNP) jobs. It must be specified for each node at least once. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. For jobs running on Fargate resources, then @value@ is the hard limit (in GiB), represented in decimal form, and must match one of the supported values (0.5 and whole numbers between 1 and 30, inclusive) and the @VCPU@ values must be one of the values supported for that memory value.     * value = 0.5    * @VCPU@ = 0.25     * value = 1    * @VCPU@ = 0.25 or 0.5     * value = 2    * @VCPU@ = 0.25, 0.5, or 1     * value = 3    * @VCPU@ = 0.5, or 1     * value = 4    * @VCPU@ = 0.5, 1, or 2     * value = 5, 6, or 7    * @VCPU@ = 1 or 2     * value = 8    * @VCPU@ = 1, 2, or 4     * value = 9, 10, 11, 12, 13, 14, 15, or 16    * @VCPU@ = 2 or 4     * value = 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, or 30    * @VCPU@ = 4     * type="VCPU"    * The number of vCPUs reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places; it must be specified for each node at least once. For jobs running on Fargate resources, then @value@ must match one of the supported values and the @MEMORY@ values must be one of the values supported for that VCPU value. The supported values are 0.25, 0.5, 1, 2, and 4     * value = 0.25    * @MEMORY@ = 0.5, 1, or 2     * value = 0.5    * @MEMORY@ = 1, 2, 3, or 4     * value = 1    * @MEMORY@ = 2, 3, 4, 5, 6, 7, or 8     * value = 2    * @MEMORY@ = 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, or 16     * value = 4    * @MEMORY@ = 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, or 30
rrValue :: Lens' ResourceRequirement Text
rrValue = lens _rrValue (\s a -> s { _rrValue = a })

-- | The type of resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
rrType :: Lens' ResourceRequirement ResourceType
rrType = lens _rrType (\s a -> s { _rrType = a })

instance FromJSON ResourceRequirement where
  parseJSON = withObject
    "ResourceRequirement"
    (\x -> ResourceRequirement' <$> (x .: "value") <*> (x .: "type"))

instance Hashable ResourceRequirement where

instance NFData ResourceRequirement where

instance ToJSON ResourceRequirement where
  toJSON ResourceRequirement' {..} =
    object (catMaybes [Just ("value" .= _rrValue), Just ("type" .= _rrType)])
