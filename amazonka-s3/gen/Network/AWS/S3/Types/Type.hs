{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Type
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Type (
  Type (
    ..
    , AmazonCustomerByEmail
    , CanonicalUser
    , Group
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data Type = Type' (CI Text)
              deriving (Eq, Ord, Read, Show, Data, Typeable,
                        Generic)

pattern AmazonCustomerByEmail :: Type
pattern AmazonCustomerByEmail = Type' "AmazonCustomerByEmail"

pattern CanonicalUser :: Type
pattern CanonicalUser = Type' "CanonicalUser"

pattern Group :: Type
pattern Group = Type' "Group"

{-# COMPLETE
  AmazonCustomerByEmail,
  CanonicalUser,
  Group,
  Type' #-}

instance FromText Type where
    parser = (Type' . mk) <$> takeText

instance ToText Type where
    toText (Type' ci) = original ci

instance Hashable     Type
instance NFData       Type
instance ToByteString Type
instance ToQuery      Type
instance ToHeader     Type

instance FromXML Type where
    parseXML = parseXMLText "Type"

instance ToXML Type where
    toXML = toXMLText
