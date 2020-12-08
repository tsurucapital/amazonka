{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicaModificationsStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ReplicaModificationsStatus (
  ReplicaModificationsStatus (
    ..
    , RMSDisabled
    , RMSEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ReplicaModificationsStatus = ReplicaModificationsStatus' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern RMSDisabled :: ReplicaModificationsStatus
pattern RMSDisabled = ReplicaModificationsStatus' "Disabled"

pattern RMSEnabled :: ReplicaModificationsStatus
pattern RMSEnabled = ReplicaModificationsStatus' "Enabled"

{-# COMPLETE
  RMSDisabled,
  RMSEnabled,
  ReplicaModificationsStatus' #-}

instance FromText ReplicaModificationsStatus where
    parser = (ReplicaModificationsStatus' . mk) <$> takeText

instance ToText ReplicaModificationsStatus where
    toText (ReplicaModificationsStatus' ci) = original ci

instance Hashable     ReplicaModificationsStatus
instance NFData       ReplicaModificationsStatus
instance ToByteString ReplicaModificationsStatus
instance ToQuery      ReplicaModificationsStatus
instance ToHeader     ReplicaModificationsStatus

instance FromXML ReplicaModificationsStatus where
    parseXML = parseXMLText "ReplicaModificationsStatus"

instance ToXML ReplicaModificationsStatus where
    toXML = toXMLText
