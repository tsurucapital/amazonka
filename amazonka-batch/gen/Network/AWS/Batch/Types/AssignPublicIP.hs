{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.AssignPublicIP
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.AssignPublicIP (
  AssignPublicIP (
    ..
    , Disabled
    , Enabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssignPublicIP = AssignPublicIP' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Disabled :: AssignPublicIP
pattern Disabled = AssignPublicIP' "DISABLED"

pattern Enabled :: AssignPublicIP
pattern Enabled = AssignPublicIP' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  AssignPublicIP' #-}

instance FromText AssignPublicIP where
    parser = (AssignPublicIP' . mk) <$> takeText

instance ToText AssignPublicIP where
    toText (AssignPublicIP' ci) = original ci

instance Hashable     AssignPublicIP
instance NFData       AssignPublicIP
instance ToByteString AssignPublicIP
instance ToQuery      AssignPublicIP
instance ToHeader     AssignPublicIP

instance ToJSON AssignPublicIP where
    toJSON = toJSONText

instance FromJSON AssignPublicIP where
    parseJSON = parseJSONText "AssignPublicIP"
