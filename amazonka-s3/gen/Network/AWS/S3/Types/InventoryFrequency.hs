{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryFrequency
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.InventoryFrequency (
  InventoryFrequency (
    ..
    , Daily
    , Weekly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data InventoryFrequency = InventoryFrequency' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Daily :: InventoryFrequency
pattern Daily = InventoryFrequency' "Daily"

pattern Weekly :: InventoryFrequency
pattern Weekly = InventoryFrequency' "Weekly"

{-# COMPLETE
  Daily,
  Weekly,
  InventoryFrequency' #-}

instance FromText InventoryFrequency where
    parser = (InventoryFrequency' . mk) <$> takeText

instance ToText InventoryFrequency where
    toText (InventoryFrequency' ci) = original ci

instance Hashable     InventoryFrequency
instance NFData       InventoryFrequency
instance ToByteString InventoryFrequency
instance ToQuery      InventoryFrequency
instance ToHeader     InventoryFrequency

instance FromXML InventoryFrequency where
    parseXML = parseXMLText "InventoryFrequency"

instance ToXML InventoryFrequency where
    toXML = toXMLText
