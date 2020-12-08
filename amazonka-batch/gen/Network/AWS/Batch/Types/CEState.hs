{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CEState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.CEState (
  CEState (
    ..
    , CESDisabled
    , CESEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CEState = CEState' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern CESDisabled :: CEState
pattern CESDisabled = CEState' "DISABLED"

pattern CESEnabled :: CEState
pattern CESEnabled = CEState' "ENABLED"

{-# COMPLETE
  CESDisabled,
  CESEnabled,
  CEState' #-}

instance FromText CEState where
    parser = (CEState' . mk) <$> takeText

instance ToText CEState where
    toText (CEState' ci) = original ci

instance Hashable     CEState
instance NFData       CEState
instance ToByteString CEState
instance ToQuery      CEState
instance ToHeader     CEState

instance ToJSON CEState where
    toJSON = toJSONText

instance FromJSON CEState where
    parseJSON = parseJSONText "CEState"
