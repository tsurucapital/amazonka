{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.MetricsStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.MetricsStatus (
  MetricsStatus (
    ..
    , MSDisabled
    , MSEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data MetricsStatus = MetricsStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern MSDisabled :: MetricsStatus
pattern MSDisabled = MetricsStatus' "Disabled"

pattern MSEnabled :: MetricsStatus
pattern MSEnabled = MetricsStatus' "Enabled"

{-# COMPLETE
  MSDisabled,
  MSEnabled,
  MetricsStatus' #-}

instance FromText MetricsStatus where
    parser = (MetricsStatus' . mk) <$> takeText

instance ToText MetricsStatus where
    toText (MetricsStatus' ci) = original ci

instance Hashable     MetricsStatus
instance NFData       MetricsStatus
instance ToByteString MetricsStatus
instance ToQuery      MetricsStatus
instance ToHeader     MetricsStatus

instance FromXML MetricsStatus where
    parseXML = parseXMLText "MetricsStatus"

instance ToXML MetricsStatus where
    toXML = toXMLText
