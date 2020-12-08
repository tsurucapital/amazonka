{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.FargatePlatformConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.FargatePlatformConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The platform configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
--
--
-- /See:/ 'fargatePlatformConfiguration' smart constructor.
newtype FargatePlatformConfiguration = FargatePlatformConfiguration'{_fpcPlatformVersion
                                                                     ::
                                                                     Maybe Text}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'FargatePlatformConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpcPlatformVersion' - The AWS Fargate platform version on which the jobs are running. A platform version is specified only for jobs running on Fargate resources. If one isn't specified, the @LATEST@ platform version is used by default. This will use a recent, approved version of the AWS Fargate platform for compute resources. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate platform versions> in the /Amazon Elastic Container Service Developer Guide/ .
fargatePlatformConfiguration :: FargatePlatformConfiguration
fargatePlatformConfiguration =
  FargatePlatformConfiguration' { _fpcPlatformVersion = Nothing }

-- | The AWS Fargate platform version on which the jobs are running. A platform version is specified only for jobs running on Fargate resources. If one isn't specified, the @LATEST@ platform version is used by default. This will use a recent, approved version of the AWS Fargate platform for compute resources. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate platform versions> in the /Amazon Elastic Container Service Developer Guide/ .
fpcPlatformVersion :: Lens' FargatePlatformConfiguration (Maybe Text)
fpcPlatformVersion =
  lens _fpcPlatformVersion (\s a -> s { _fpcPlatformVersion = a })

instance FromJSON FargatePlatformConfiguration where
  parseJSON = withObject
    "FargatePlatformConfiguration"
    (\x -> FargatePlatformConfiguration' <$> (x .:? "platformVersion"))

instance Hashable FargatePlatformConfiguration where

instance NFData FargatePlatformConfiguration where

instance ToJSON FargatePlatformConfiguration where
  toJSON FargatePlatformConfiguration' {..} =
    object (catMaybes [("platformVersion" .=) <$> _fpcPlatformVersion])
