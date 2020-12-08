{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.OwnerOverride
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.OwnerOverride (
  OwnerOverride (
    ..
    , Destination
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data OwnerOverride = OwnerOverride' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Destination :: OwnerOverride
pattern Destination = OwnerOverride' "Destination"

{-# COMPLETE
  Destination,
  OwnerOverride' #-}

instance FromText OwnerOverride where
    parser = (OwnerOverride' . mk) <$> takeText

instance ToText OwnerOverride where
    toText (OwnerOverride' ci) = original ci

instance Hashable     OwnerOverride
instance NFData       OwnerOverride
instance ToByteString OwnerOverride
instance ToQuery      OwnerOverride
instance ToHeader     OwnerOverride

instance FromXML OwnerOverride where
    parseXML = parseXMLText "OwnerOverride"

instance ToXML OwnerOverride where
    toXML = toXMLText
