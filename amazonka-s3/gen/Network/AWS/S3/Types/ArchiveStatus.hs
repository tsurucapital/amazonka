{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ArchiveStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ArchiveStatus (
  ArchiveStatus (
    ..
    , ASArchiveAccess
    , ASDeepArchiveAccess
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ArchiveStatus = ArchiveStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern ASArchiveAccess :: ArchiveStatus
pattern ASArchiveAccess = ArchiveStatus' "ARCHIVE_ACCESS"

pattern ASDeepArchiveAccess :: ArchiveStatus
pattern ASDeepArchiveAccess = ArchiveStatus' "DEEP_ARCHIVE_ACCESS"

{-# COMPLETE
  ASArchiveAccess,
  ASDeepArchiveAccess,
  ArchiveStatus' #-}

instance FromText ArchiveStatus where
    parser = (ArchiveStatus' . mk) <$> takeText

instance ToText ArchiveStatus where
    toText (ArchiveStatus' ci) = original ci

instance Hashable     ArchiveStatus
instance NFData       ArchiveStatus
instance ToByteString ArchiveStatus
instance ToQuery      ArchiveStatus
instance ToHeader     ArchiveStatus

instance FromXML ArchiveStatus where
    parseXML = parseXMLText "ArchiveStatus"
