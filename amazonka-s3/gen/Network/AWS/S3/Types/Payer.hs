{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Payer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Payer (
  Payer (
    ..
    , BucketOwner
    , Requester
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data Payer = Payer' (CI Text)
               deriving (Eq, Ord, Read, Show, Data, Typeable,
                         Generic)

pattern BucketOwner :: Payer
pattern BucketOwner = Payer' "BucketOwner"

pattern Requester :: Payer
pattern Requester = Payer' "Requester"

{-# COMPLETE
  BucketOwner,
  Requester,
  Payer' #-}

instance FromText Payer where
    parser = (Payer' . mk) <$> takeText

instance ToText Payer where
    toText (Payer' ci) = original ci

instance Hashable     Payer
instance NFData       Payer
instance ToByteString Payer
instance ToQuery      Payer
instance ToHeader     Payer

instance FromXML Payer where
    parseXML = parseXMLText "Payer"

instance ToXML Payer where
    toXML = toXMLText
