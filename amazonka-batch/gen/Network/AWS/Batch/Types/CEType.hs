{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CEType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.CEType (
  CEType (
    ..
    , Managed
    , Unmanaged
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CEType = CEType' (CI Text)
                deriving (Eq, Ord, Read, Show, Data, Typeable,
                          Generic)

pattern Managed :: CEType
pattern Managed = CEType' "MANAGED"

pattern Unmanaged :: CEType
pattern Unmanaged = CEType' "UNMANAGED"

{-# COMPLETE
  Managed,
  Unmanaged,
  CEType' #-}

instance FromText CEType where
    parser = (CEType' . mk) <$> takeText

instance ToText CEType where
    toText (CEType' ci) = original ci

instance Hashable     CEType
instance NFData       CEType
instance ToByteString CEType
instance ToQuery      CEType
instance ToHeader     CEType

instance ToJSON CEType where
    toJSON = toJSONText

instance FromJSON CEType where
    parseJSON = parseJSONText "CEType"
