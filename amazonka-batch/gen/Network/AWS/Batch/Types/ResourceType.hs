{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ResourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.ResourceType (
  ResourceType (
    ..
    , Gpu
    , Memory
    , Vcpu
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Gpu :: ResourceType
pattern Gpu = ResourceType' "GPU"

pattern Memory :: ResourceType
pattern Memory = ResourceType' "MEMORY"

pattern Vcpu :: ResourceType
pattern Vcpu = ResourceType' "VCPU"

{-# COMPLETE
  Gpu,
  Memory,
  Vcpu,
  ResourceType' #-}

instance FromText ResourceType where
    parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
    toText (ResourceType' ci) = original ci

instance Hashable     ResourceType
instance NFData       ResourceType
instance ToByteString ResourceType
instance ToQuery      ResourceType
instance ToHeader     ResourceType

instance ToJSON ResourceType where
    toJSON = toJSONText

instance FromJSON ResourceType where
    parseJSON = parseJSONText "ResourceType"
