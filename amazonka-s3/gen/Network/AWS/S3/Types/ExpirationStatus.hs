{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ExpirationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ExpirationStatus (
  ExpirationStatus (
    ..
    , ESDisabled
    , ESEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ExpirationStatus = ExpirationStatus' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern ESDisabled :: ExpirationStatus
pattern ESDisabled = ExpirationStatus' "Disabled"

pattern ESEnabled :: ExpirationStatus
pattern ESEnabled = ExpirationStatus' "Enabled"

{-# COMPLETE
  ESDisabled,
  ESEnabled,
  ExpirationStatus' #-}

instance FromText ExpirationStatus where
    parser = (ExpirationStatus' . mk) <$> takeText

instance ToText ExpirationStatus where
    toText (ExpirationStatus' ci) = original ci

instance Hashable     ExpirationStatus
instance NFData       ExpirationStatus
instance ToByteString ExpirationStatus
instance ToQuery      ExpirationStatus
instance ToHeader     ExpirationStatus

instance FromXML ExpirationStatus where
    parseXML = parseXMLText "ExpirationStatus"

instance ToXML ExpirationStatus where
    toXML = toXMLText
