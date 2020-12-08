{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.BucketLogsPermission
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.BucketLogsPermission (
  BucketLogsPermission (
    ..
    , FullControl
    , Read
    , Write
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data BucketLogsPermission = BucketLogsPermission' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern FullControl :: BucketLogsPermission
pattern FullControl = BucketLogsPermission' "FULL_CONTROL"

pattern Read :: BucketLogsPermission
pattern Read = BucketLogsPermission' "READ"

pattern Write :: BucketLogsPermission
pattern Write = BucketLogsPermission' "WRITE"

{-# COMPLETE
  FullControl,
  Read,
  Write,
  BucketLogsPermission' #-}

instance FromText BucketLogsPermission where
    parser = (BucketLogsPermission' . mk) <$> takeText

instance ToText BucketLogsPermission where
    toText (BucketLogsPermission' ci) = original ci

instance Hashable     BucketLogsPermission
instance NFData       BucketLogsPermission
instance ToByteString BucketLogsPermission
instance ToQuery      BucketLogsPermission
instance ToHeader     BucketLogsPermission

instance FromXML BucketLogsPermission where
    parseXML = parseXMLText "BucketLogsPermission"

instance ToXML BucketLogsPermission where
    toXML = toXMLText
