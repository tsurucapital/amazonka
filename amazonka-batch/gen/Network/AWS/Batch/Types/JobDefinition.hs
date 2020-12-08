{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.JobDefinition where

import Network.AWS.Batch.Types.ContainerProperties
import Network.AWS.Batch.Types.JobTimeout
import Network.AWS.Batch.Types.NodeProperties
import Network.AWS.Batch.Types.PlatformCapability
import Network.AWS.Batch.Types.RetryStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Batch job definition.
--
--
--
-- /See:/ 'jobDefinition' smart constructor.
data JobDefinition = JobDefinition'{_jddStatus ::
                                    !(Maybe Text),
                                    _jddPropagateTags :: !(Maybe Bool),
                                    _jddRetryStrategy :: !(Maybe RetryStrategy),
                                    _jddPlatformCapabilities ::
                                    !(Maybe [PlatformCapability]),
                                    _jddParameters :: !(Maybe (Map Text Text)),
                                    _jddTimeout :: !(Maybe JobTimeout),
                                    _jddContainerProperties ::
                                    !(Maybe ContainerProperties),
                                    _jddNodeProperties ::
                                    !(Maybe NodeProperties),
                                    _jddTags :: !(Maybe (Map Text Text)),
                                    _jddJobDefinitionName :: !Text,
                                    _jddJobDefinitionARN :: !Text,
                                    _jddRevision :: !Int, _jddType :: !Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jddStatus' - The status of the job definition.
--
-- * 'jddPropagateTags' - Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
--
-- * 'jddRetryStrategy' - The retry strategy to use for failed jobs that are submitted with this job definition.
--
-- * 'jddPlatformCapabilities' - The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
--
-- * 'jddParameters' - Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition. For more information about specifying parameters, see <https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html Job Definition Parameters> in the /AWS Batch User Guide/ .
--
-- * 'jddTimeout' - The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout duration after which AWS Batch terminates your jobs if they haven't finished.
--
-- * 'jddContainerProperties' - An object with various properties specific to container-based jobs.
--
-- * 'jddNodeProperties' - An object with various properties specific to multi-node parallel jobs.
--
-- * 'jddTags' - The tags applied to the job definition.
--
-- * 'jddJobDefinitionName' - The name of the job definition.
--
-- * 'jddJobDefinitionARN' - The Amazon Resource Name (ARN) for the job definition.
--
-- * 'jddRevision' - The revision of the job definition.
--
-- * 'jddType' - The type of job definition. If the job is run on Fargate resources, then @multinode@ isn't supported. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
jobDefinition
  :: Text -- ^ 'jddJobDefinitionName'
  -> Text -- ^ 'jddJobDefinitionARN'
  -> Int -- ^ 'jddRevision'
  -> Text -- ^ 'jddType'
  -> JobDefinition
jobDefinition pJobDefinitionName_ pJobDefinitionARN_ pRevision_ pType_ =
  JobDefinition' { _jddStatus               = Nothing
                 , _jddPropagateTags        = Nothing
                 , _jddRetryStrategy        = Nothing
                 , _jddPlatformCapabilities = Nothing
                 , _jddParameters           = Nothing
                 , _jddTimeout              = Nothing
                 , _jddContainerProperties  = Nothing
                 , _jddNodeProperties       = Nothing
                 , _jddTags                 = Nothing
                 , _jddJobDefinitionName    = pJobDefinitionName_
                 , _jddJobDefinitionARN     = pJobDefinitionARN_
                 , _jddRevision             = pRevision_
                 , _jddType                 = pType_
                 }

-- | The status of the job definition.
jddStatus :: Lens' JobDefinition (Maybe Text)
jddStatus = lens _jddStatus (\s a -> s { _jddStatus = a })

-- | Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
jddPropagateTags :: Lens' JobDefinition (Maybe Bool)
jddPropagateTags = lens _jddPropagateTags (\s a -> s { _jddPropagateTags = a })

-- | The retry strategy to use for failed jobs that are submitted with this job definition.
jddRetryStrategy :: Lens' JobDefinition (Maybe RetryStrategy)
jddRetryStrategy = lens _jddRetryStrategy (\s a -> s { _jddRetryStrategy = a })

-- | The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
jddPlatformCapabilities :: Lens' JobDefinition [PlatformCapability]
jddPlatformCapabilities =
  lens _jddPlatformCapabilities (\s a -> s { _jddPlatformCapabilities = a })
    . _Default
    . _Coerce

-- | Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition. For more information about specifying parameters, see <https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html Job Definition Parameters> in the /AWS Batch User Guide/ .
jddParameters :: Lens' JobDefinition (HashMap Text Text)
jddParameters =
  lens _jddParameters (\s a -> s { _jddParameters = a }) . _Default . _Map

-- | The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout duration after which AWS Batch terminates your jobs if they haven't finished.
jddTimeout :: Lens' JobDefinition (Maybe JobTimeout)
jddTimeout = lens _jddTimeout (\s a -> s { _jddTimeout = a })

-- | An object with various properties specific to container-based jobs.
jddContainerProperties :: Lens' JobDefinition (Maybe ContainerProperties)
jddContainerProperties =
  lens _jddContainerProperties (\s a -> s { _jddContainerProperties = a })

-- | An object with various properties specific to multi-node parallel jobs.
jddNodeProperties :: Lens' JobDefinition (Maybe NodeProperties)
jddNodeProperties =
  lens _jddNodeProperties (\s a -> s { _jddNodeProperties = a })

-- | The tags applied to the job definition.
jddTags :: Lens' JobDefinition (HashMap Text Text)
jddTags = lens _jddTags (\s a -> s { _jddTags = a }) . _Default . _Map

-- | The name of the job definition.
jddJobDefinitionName :: Lens' JobDefinition Text
jddJobDefinitionName =
  lens _jddJobDefinitionName (\s a -> s { _jddJobDefinitionName = a })

-- | The Amazon Resource Name (ARN) for the job definition.
jddJobDefinitionARN :: Lens' JobDefinition Text
jddJobDefinitionARN =
  lens _jddJobDefinitionARN (\s a -> s { _jddJobDefinitionARN = a })

-- | The revision of the job definition.
jddRevision :: Lens' JobDefinition Int
jddRevision = lens _jddRevision (\s a -> s { _jddRevision = a })

-- | The type of job definition. If the job is run on Fargate resources, then @multinode@ isn't supported. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
jddType :: Lens' JobDefinition Text
jddType = lens _jddType (\s a -> s { _jddType = a })

instance FromJSON JobDefinition where
  parseJSON = withObject
    "JobDefinition"
    (\x ->
      JobDefinition'
        <$> (x .:? "status")
        <*> (x .:? "propagateTags")
        <*> (x .:? "retryStrategy")
        <*> (x .:? "platformCapabilities" .!= mempty)
        <*> (x .:? "parameters" .!= mempty)
        <*> (x .:? "timeout")
        <*> (x .:? "containerProperties")
        <*> (x .:? "nodeProperties")
        <*> (x .:? "tags" .!= mempty)
        <*> (x .: "jobDefinitionName")
        <*> (x .: "jobDefinitionArn")
        <*> (x .: "revision")
        <*> (x .: "type")
    )

instance Hashable JobDefinition where

instance NFData JobDefinition where
