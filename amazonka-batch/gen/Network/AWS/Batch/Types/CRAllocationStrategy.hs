{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CRAllocationStrategy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.CRAllocationStrategy (
  CRAllocationStrategy (
    ..
    , BestFit
    , BestFitProgressive
    , SpotCapacityOptimized
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CRAllocationStrategy = CRAllocationStrategy' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern BestFit :: CRAllocationStrategy
pattern BestFit = CRAllocationStrategy' "BEST_FIT"

pattern BestFitProgressive :: CRAllocationStrategy
pattern BestFitProgressive = CRAllocationStrategy' "BEST_FIT_PROGRESSIVE"

pattern SpotCapacityOptimized :: CRAllocationStrategy
pattern SpotCapacityOptimized = CRAllocationStrategy' "SPOT_CAPACITY_OPTIMIZED"

{-# COMPLETE
  BestFit,
  BestFitProgressive,
  SpotCapacityOptimized,
  CRAllocationStrategy' #-}

instance FromText CRAllocationStrategy where
    parser = (CRAllocationStrategy' . mk) <$> takeText

instance ToText CRAllocationStrategy where
    toText (CRAllocationStrategy' ci) = original ci

instance Hashable     CRAllocationStrategy
instance NFData       CRAllocationStrategy
instance ToByteString CRAllocationStrategy
instance ToQuery      CRAllocationStrategy
instance ToHeader     CRAllocationStrategy

instance ToJSON CRAllocationStrategy where
    toJSON = toJSONText

instance FromJSON CRAllocationStrategy where
    parseJSON = parseJSONText "CRAllocationStrategy"
