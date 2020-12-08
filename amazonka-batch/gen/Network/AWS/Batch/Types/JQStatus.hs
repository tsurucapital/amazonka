{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JQStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.JQStatus (
  JQStatus (
    ..
    , Creating
    , Deleted
    , Deleting
    , Invalid
    , Updating
    , Valid
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JQStatus = JQStatus' (CI Text)
                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                            Generic)

pattern Creating :: JQStatus
pattern Creating = JQStatus' "CREATING"

pattern Deleted :: JQStatus
pattern Deleted = JQStatus' "DELETED"

pattern Deleting :: JQStatus
pattern Deleting = JQStatus' "DELETING"

pattern Invalid :: JQStatus
pattern Invalid = JQStatus' "INVALID"

pattern Updating :: JQStatus
pattern Updating = JQStatus' "UPDATING"

pattern Valid :: JQStatus
pattern Valid = JQStatus' "VALID"

{-# COMPLETE
  Creating,
  Deleted,
  Deleting,
  Invalid,
  Updating,
  Valid,
  JQStatus' #-}

instance FromText JQStatus where
    parser = (JQStatus' . mk) <$> takeText

instance ToText JQStatus where
    toText (JQStatus' ci) = original ci

instance Hashable     JQStatus
instance NFData       JQStatus
instance ToByteString JQStatus
instance ToQuery      JQStatus
instance ToHeader     JQStatus

instance FromJSON JQStatus where
    parseJSON = parseJSONText "JQStatus"
