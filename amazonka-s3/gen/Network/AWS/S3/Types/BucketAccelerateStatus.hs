{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.BucketAccelerateStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.BucketAccelerateStatus (
  BucketAccelerateStatus (
    ..
    , BASEnabled
    , BASSuspended
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data BucketAccelerateStatus = BucketAccelerateStatus' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern BASEnabled :: BucketAccelerateStatus
pattern BASEnabled = BucketAccelerateStatus' "Enabled"

pattern BASSuspended :: BucketAccelerateStatus
pattern BASSuspended = BucketAccelerateStatus' "Suspended"

{-# COMPLETE
  BASEnabled,
  BASSuspended,
  BucketAccelerateStatus' #-}

instance FromText BucketAccelerateStatus where
    parser = (BucketAccelerateStatus' . mk) <$> takeText

instance ToText BucketAccelerateStatus where
    toText (BucketAccelerateStatus' ci) = original ci

instance Hashable     BucketAccelerateStatus
instance NFData       BucketAccelerateStatus
instance ToByteString BucketAccelerateStatus
instance ToQuery      BucketAccelerateStatus
instance ToHeader     BucketAccelerateStatus

instance FromXML BucketAccelerateStatus where
    parseXML = parseXMLText "BucketAccelerateStatus"

instance ToXML BucketAccelerateStatus where
    toXML = toXMLText
