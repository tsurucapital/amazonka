{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ObjectStorageClass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ObjectStorageClass (
  ObjectStorageClass (
    ..
    , OSCGlacier
    , OSCIntelligentTiering
    , OSCReducedRedundancy
    , OSCStandard
    , OSCStandardIA
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ObjectStorageClass = ObjectStorageClass' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern OSCGlacier :: ObjectStorageClass
pattern OSCGlacier = ObjectStorageClass' "GLACIER"

pattern OSCIntelligentTiering :: ObjectStorageClass
pattern OSCIntelligentTiering = ObjectStorageClass' "INTELLIGENT_TIERING"

pattern OSCReducedRedundancy :: ObjectStorageClass
pattern OSCReducedRedundancy = ObjectStorageClass' "REDUCED_REDUNDANCY"

pattern OSCStandard :: ObjectStorageClass
pattern OSCStandard = ObjectStorageClass' "STANDARD"

pattern OSCStandardIA :: ObjectStorageClass
pattern OSCStandardIA = ObjectStorageClass' "STANDARD_IA"

{-# COMPLETE
  OSCGlacier,
  OSCIntelligentTiering,
  OSCReducedRedundancy,
  OSCStandard,
  OSCStandardIA,
  ObjectStorageClass' #-}

instance FromText ObjectStorageClass where
    parser = (ObjectStorageClass' . mk) <$> takeText

instance ToText ObjectStorageClass where
    toText (ObjectStorageClass' ci) = original ci

instance Hashable     ObjectStorageClass
instance NFData       ObjectStorageClass
instance ToByteString ObjectStorageClass
instance ToQuery      ObjectStorageClass
instance ToHeader     ObjectStorageClass

instance FromXML ObjectStorageClass where
    parseXML = parseXMLText "ObjectStorageClass"
