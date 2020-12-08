{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryIncludedObjectVersions
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.InventoryIncludedObjectVersions (
  InventoryIncludedObjectVersions (
    ..
    , All
    , Current
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data InventoryIncludedObjectVersions = InventoryIncludedObjectVersions' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern All :: InventoryIncludedObjectVersions
pattern All = InventoryIncludedObjectVersions' "All"

pattern Current :: InventoryIncludedObjectVersions
pattern Current = InventoryIncludedObjectVersions' "Current"

{-# COMPLETE
  All,
  Current,
  InventoryIncludedObjectVersions' #-}

instance FromText InventoryIncludedObjectVersions where
    parser = (InventoryIncludedObjectVersions' . mk) <$> takeText

instance ToText InventoryIncludedObjectVersions where
    toText (InventoryIncludedObjectVersions' ci) = original ci

instance Hashable     InventoryIncludedObjectVersions
instance NFData       InventoryIncludedObjectVersions
instance ToByteString InventoryIncludedObjectVersions
instance ToQuery      InventoryIncludedObjectVersions
instance ToHeader     InventoryIncludedObjectVersions

instance FromXML InventoryIncludedObjectVersions where
    parseXML = parseXMLText "InventoryIncludedObjectVersions"

instance ToXML InventoryIncludedObjectVersions where
    toXML = toXMLText
