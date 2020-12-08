{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Permission
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Permission (
  Permission (
    ..
    , PFullControl
    , PRead
    , PReadAcp
    , PWrite
    , PWriteAcp
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data Permission = Permission' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern PFullControl :: Permission
pattern PFullControl = Permission' "FULL_CONTROL"

pattern PRead :: Permission
pattern PRead = Permission' "READ"

pattern PReadAcp :: Permission
pattern PReadAcp = Permission' "READ_ACP"

pattern PWrite :: Permission
pattern PWrite = Permission' "WRITE"

pattern PWriteAcp :: Permission
pattern PWriteAcp = Permission' "WRITE_ACP"

{-# COMPLETE
  PFullControl,
  PRead,
  PReadAcp,
  PWrite,
  PWriteAcp,
  Permission' #-}

instance FromText Permission where
    parser = (Permission' . mk) <$> takeText

instance ToText Permission where
    toText (Permission' ci) = original ci

instance Hashable     Permission
instance NFData       Permission
instance ToByteString Permission
instance ToQuery      Permission
instance ToHeader     Permission

instance FromXML Permission where
    parseXML = parseXMLText "Permission"

instance ToXML Permission where
    toXML = toXMLText
