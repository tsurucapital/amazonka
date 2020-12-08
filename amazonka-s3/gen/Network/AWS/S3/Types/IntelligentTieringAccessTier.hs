{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.IntelligentTieringAccessTier
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.IntelligentTieringAccessTier (
  IntelligentTieringAccessTier (
    ..
    , ArchiveAccess
    , DeepArchiveAccess
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data IntelligentTieringAccessTier = IntelligentTieringAccessTier' (CI
                                                                     Text)
                                      deriving (Eq, Ord, Read, Show, Data,
                                                Typeable, Generic)

pattern ArchiveAccess :: IntelligentTieringAccessTier
pattern ArchiveAccess = IntelligentTieringAccessTier' "ARCHIVE_ACCESS"

pattern DeepArchiveAccess :: IntelligentTieringAccessTier
pattern DeepArchiveAccess = IntelligentTieringAccessTier' "DEEP_ARCHIVE_ACCESS"

{-# COMPLETE
  ArchiveAccess,
  DeepArchiveAccess,
  IntelligentTieringAccessTier' #-}

instance FromText IntelligentTieringAccessTier where
    parser = (IntelligentTieringAccessTier' . mk) <$> takeText

instance ToText IntelligentTieringAccessTier where
    toText (IntelligentTieringAccessTier' ci) = original ci

instance Hashable     IntelligentTieringAccessTier
instance NFData       IntelligentTieringAccessTier
instance ToByteString IntelligentTieringAccessTier
instance ToQuery      IntelligentTieringAccessTier
instance ToHeader     IntelligentTieringAccessTier

instance FromXML IntelligentTieringAccessTier where
    parseXML = parseXMLText "IntelligentTieringAccessTier"

instance ToXML IntelligentTieringAccessTier where
    toXML = toXMLText
