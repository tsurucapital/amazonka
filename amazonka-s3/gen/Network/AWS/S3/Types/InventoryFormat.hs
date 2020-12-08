{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.InventoryFormat (
  InventoryFormat (
    ..
    , IFCSV
    , IFOrc
    , IFParquet
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data InventoryFormat = InventoryFormat' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern IFCSV :: InventoryFormat
pattern IFCSV = InventoryFormat' "CSV"

pattern IFOrc :: InventoryFormat
pattern IFOrc = InventoryFormat' "ORC"

pattern IFParquet :: InventoryFormat
pattern IFParquet = InventoryFormat' "Parquet"

{-# COMPLETE
  IFCSV,
  IFOrc,
  IFParquet,
  InventoryFormat' #-}

instance FromText InventoryFormat where
    parser = (InventoryFormat' . mk) <$> takeText

instance ToText InventoryFormat where
    toText (InventoryFormat' ci) = original ci

instance Hashable     InventoryFormat
instance NFData       InventoryFormat
instance ToByteString InventoryFormat
instance ToQuery      InventoryFormat
instance ToHeader     InventoryFormat

instance FromXML InventoryFormat where
    parseXML = parseXMLText "InventoryFormat"

instance ToXML InventoryFormat where
    toXML = toXMLText
