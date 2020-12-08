{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.DeleteMarkerReplicationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.DeleteMarkerReplicationStatus (
  DeleteMarkerReplicationStatus (
    ..
    , DMRSDisabled
    , DMRSEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data DeleteMarkerReplicationStatus = DeleteMarkerReplicationStatus' (CI
                                                                       Text)
                                       deriving (Eq, Ord, Read, Show, Data,
                                                 Typeable, Generic)

pattern DMRSDisabled :: DeleteMarkerReplicationStatus
pattern DMRSDisabled = DeleteMarkerReplicationStatus' "Disabled"

pattern DMRSEnabled :: DeleteMarkerReplicationStatus
pattern DMRSEnabled = DeleteMarkerReplicationStatus' "Enabled"

{-# COMPLETE
  DMRSDisabled,
  DMRSEnabled,
  DeleteMarkerReplicationStatus' #-}

instance FromText DeleteMarkerReplicationStatus where
    parser = (DeleteMarkerReplicationStatus' . mk) <$> takeText

instance ToText DeleteMarkerReplicationStatus where
    toText (DeleteMarkerReplicationStatus' ci) = original ci

instance Hashable     DeleteMarkerReplicationStatus
instance NFData       DeleteMarkerReplicationStatus
instance ToByteString DeleteMarkerReplicationStatus
instance ToQuery      DeleteMarkerReplicationStatus
instance ToHeader     DeleteMarkerReplicationStatus

instance FromXML DeleteMarkerReplicationStatus where
    parseXML = parseXMLText "DeleteMarkerReplicationStatus"

instance ToXML DeleteMarkerReplicationStatus where
    toXML = toXMLText
