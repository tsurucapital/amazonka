{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.Secret
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.Secret where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the secret to expose to your container. Secrets can be exposed to a container in the following ways:
--
--
--     * To inject sensitive data into your containers as environment variables, use the @secrets@ container definition parameter.
--
--     * To reference sensitive information in the log configuration of a container, use the @secretOptions@ container definition parameter.
--
--
--
-- For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html Specifying sensitive data> in the /AWS Batch User Guide/ .
--
--
-- /See:/ 'secret' smart constructor.
data Secret = Secret'{_sName      :: !Text,
                      _sValueFrom :: !Text}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Secret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName' - The name of the secret.
--
-- * 'sValueFrom' - The secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the AWS Systems Manager Parameter Store.
secret
  :: Text -- ^ 'sName'
  -> Text -- ^ 'sValueFrom'
  -> Secret
secret pName_ pValueFrom_ =
  Secret' { _sName = pName_, _sValueFrom = pValueFrom_ }

-- | The name of the secret.
sName :: Lens' Secret Text
sName = lens _sName (\s a -> s { _sName = a })

-- | The secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the AWS Systems Manager Parameter Store.
sValueFrom :: Lens' Secret Text
sValueFrom = lens _sValueFrom (\s a -> s { _sValueFrom = a })

instance FromJSON Secret where
  parseJSON =
    withObject "Secret" (\x -> Secret' <$> (x .: "name") <*> (x .: "valueFrom"))

instance Hashable Secret where

instance NFData Secret where

instance ToJSON Secret where
  toJSON Secret' {..} = object
    (catMaybes [Just ("name" .= _sName), Just ("valueFrom" .= _sValueFrom)])
