{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ObjectLockLegalHoldStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ObjectLockLegalHoldStatus (
  ObjectLockLegalHoldStatus (
    ..
    , ON
    , Off
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ObjectLockLegalHoldStatus = ObjectLockLegalHoldStatus' (CI
                                                               Text)
                                   deriving (Eq, Ord, Read, Show, Data,
                                             Typeable, Generic)

pattern ON :: ObjectLockLegalHoldStatus
pattern ON = ObjectLockLegalHoldStatus' "ON"

pattern Off :: ObjectLockLegalHoldStatus
pattern Off = ObjectLockLegalHoldStatus' "OFF"

{-# COMPLETE
  ON,
  Off,
  ObjectLockLegalHoldStatus' #-}

instance FromText ObjectLockLegalHoldStatus where
    parser = (ObjectLockLegalHoldStatus' . mk) <$> takeText

instance ToText ObjectLockLegalHoldStatus where
    toText (ObjectLockLegalHoldStatus' ci) = original ci

instance Hashable     ObjectLockLegalHoldStatus
instance NFData       ObjectLockLegalHoldStatus
instance ToByteString ObjectLockLegalHoldStatus
instance ToQuery      ObjectLockLegalHoldStatus
instance ToHeader     ObjectLockLegalHoldStatus

instance FromXML ObjectLockLegalHoldStatus where
    parseXML = parseXMLText "ObjectLockLegalHoldStatus"

instance ToXML ObjectLockLegalHoldStatus where
    toXML = toXMLText
