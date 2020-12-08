{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.StorageClass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.StorageClass (
  StorageClass (
    ..
    , DeepArchive
    , Glacier
    , IntelligentTiering
    , OnezoneIA
    , Outposts
    , ReducedRedundancy
    , Standard
    , StandardIA
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data StorageClass = StorageClass' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern DeepArchive :: StorageClass
pattern DeepArchive = StorageClass' "DEEP_ARCHIVE"

pattern Glacier :: StorageClass
pattern Glacier = StorageClass' "GLACIER"

pattern IntelligentTiering :: StorageClass
pattern IntelligentTiering = StorageClass' "INTELLIGENT_TIERING"

pattern OnezoneIA :: StorageClass
pattern OnezoneIA = StorageClass' "ONEZONE_IA"

pattern Outposts :: StorageClass
pattern Outposts = StorageClass' "OUTPOSTS"

pattern ReducedRedundancy :: StorageClass
pattern ReducedRedundancy = StorageClass' "REDUCED_REDUNDANCY"

pattern Standard :: StorageClass
pattern Standard = StorageClass' "STANDARD"

pattern StandardIA :: StorageClass
pattern StandardIA = StorageClass' "STANDARD_IA"

{-# COMPLETE
  DeepArchive,
  Glacier,
  IntelligentTiering,
  OnezoneIA,
  Outposts,
  ReducedRedundancy,
  Standard,
  StandardIA,
  StorageClass' #-}

instance FromText StorageClass where
    parser = (StorageClass' . mk) <$> takeText

instance ToText StorageClass where
    toText (StorageClass' ci) = original ci

instance Hashable     StorageClass
instance NFData       StorageClass
instance ToByteString StorageClass
instance ToQuery      StorageClass
instance ToHeader     StorageClass

instance FromXML StorageClass where
    parseXML = parseXMLText "StorageClass"

instance ToXML StorageClass where
    toXML = toXMLText
