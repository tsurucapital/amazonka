{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CompressionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CompressionType (
  CompressionType (
    ..
    , CTBZIP2
    , CTGzip
    , CTNone
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data CompressionType = CompressionType' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern CTBZIP2 :: CompressionType
pattern CTBZIP2 = CompressionType' "BZIP2"

pattern CTGzip :: CompressionType
pattern CTGzip = CompressionType' "GZIP"

pattern CTNone :: CompressionType
pattern CTNone = CompressionType' "NONE"

{-# COMPLETE
  CTBZIP2,
  CTGzip,
  CTNone,
  CompressionType' #-}

instance FromText CompressionType where
    parser = (CompressionType' . mk) <$> takeText

instance ToText CompressionType where
    toText (CompressionType' ci) = original ci

instance Hashable     CompressionType
instance NFData       CompressionType
instance ToByteString CompressionType
instance ToQuery      CompressionType
instance ToHeader     CompressionType

instance ToXML CompressionType where
    toXML = toXMLText
