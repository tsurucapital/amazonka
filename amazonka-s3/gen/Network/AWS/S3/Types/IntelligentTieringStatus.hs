{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.IntelligentTieringStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.IntelligentTieringStatus (
  IntelligentTieringStatus (
    ..
    , ITSDisabled
    , ITSEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data IntelligentTieringStatus = IntelligentTieringStatus' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern ITSDisabled :: IntelligentTieringStatus
pattern ITSDisabled = IntelligentTieringStatus' "Disabled"

pattern ITSEnabled :: IntelligentTieringStatus
pattern ITSEnabled = IntelligentTieringStatus' "Enabled"

{-# COMPLETE
  ITSDisabled,
  ITSEnabled,
  IntelligentTieringStatus' #-}

instance FromText IntelligentTieringStatus where
    parser = (IntelligentTieringStatus' . mk) <$> takeText

instance ToText IntelligentTieringStatus where
    toText (IntelligentTieringStatus' ci) = original ci

instance Hashable     IntelligentTieringStatus
instance NFData       IntelligentTieringStatus
instance ToByteString IntelligentTieringStatus
instance ToQuery      IntelligentTieringStatus
instance ToHeader     IntelligentTieringStatus

instance FromXML IntelligentTieringStatus where
    parseXML = parseXMLText "IntelligentTieringStatus"

instance ToXML IntelligentTieringStatus where
    toXML = toXMLText
