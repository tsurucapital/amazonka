{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.SseKMSEncryptedObjectsStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.SseKMSEncryptedObjectsStatus (
  SseKMSEncryptedObjectsStatus (
    ..
    , SKEOSDisabled
    , SKEOSEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data SseKMSEncryptedObjectsStatus = SseKMSEncryptedObjectsStatus' (CI
                                                                     Text)
                                      deriving (Eq, Ord, Read, Show, Data,
                                                Typeable, Generic)

pattern SKEOSDisabled :: SseKMSEncryptedObjectsStatus
pattern SKEOSDisabled = SseKMSEncryptedObjectsStatus' "Disabled"

pattern SKEOSEnabled :: SseKMSEncryptedObjectsStatus
pattern SKEOSEnabled = SseKMSEncryptedObjectsStatus' "Enabled"

{-# COMPLETE
  SKEOSDisabled,
  SKEOSEnabled,
  SseKMSEncryptedObjectsStatus' #-}

instance FromText SseKMSEncryptedObjectsStatus where
    parser = (SseKMSEncryptedObjectsStatus' . mk) <$> takeText

instance ToText SseKMSEncryptedObjectsStatus where
    toText (SseKMSEncryptedObjectsStatus' ci) = original ci

instance Hashable     SseKMSEncryptedObjectsStatus
instance NFData       SseKMSEncryptedObjectsStatus
instance ToByteString SseKMSEncryptedObjectsStatus
instance ToQuery      SseKMSEncryptedObjectsStatus
instance ToHeader     SseKMSEncryptedObjectsStatus

instance FromXML SseKMSEncryptedObjectsStatus where
    parseXML = parseXMLText "SseKMSEncryptedObjectsStatus"

instance ToXML SseKMSEncryptedObjectsStatus where
    toXML = toXMLText
