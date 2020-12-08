{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.RequestCharged
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.RequestCharged (
  RequestCharged (
    ..
    , RCRequester
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | If present, indicates that the requester was successfully charged for the request.
--
--
data RequestCharged = RequestCharged' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern RCRequester :: RequestCharged
pattern RCRequester = RequestCharged' "requester"

{-# COMPLETE
  RCRequester,
  RequestCharged' #-}

instance FromText RequestCharged where
    parser = (RequestCharged' . mk) <$> takeText

instance ToText RequestCharged where
    toText (RequestCharged' ci) = original ci

instance Hashable     RequestCharged
instance NFData       RequestCharged
instance ToByteString RequestCharged
instance ToQuery      RequestCharged
instance ToHeader     RequestCharged

instance FromXML RequestCharged where
    parseXML = parseXMLText "RequestCharged"
