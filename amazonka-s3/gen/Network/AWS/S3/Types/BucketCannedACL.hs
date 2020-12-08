{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.BucketCannedACL
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.BucketCannedACL (
  BucketCannedACL (
    ..
    , BAuthenticatedRead
    , BPrivate
    , BPublicRead
    , BPublicReadWrite
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data BucketCannedACL = BucketCannedACL' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern BAuthenticatedRead :: BucketCannedACL
pattern BAuthenticatedRead = BucketCannedACL' "authenticated-read"

pattern BPrivate :: BucketCannedACL
pattern BPrivate = BucketCannedACL' "private"

pattern BPublicRead :: BucketCannedACL
pattern BPublicRead = BucketCannedACL' "public-read"

pattern BPublicReadWrite :: BucketCannedACL
pattern BPublicReadWrite = BucketCannedACL' "public-read-write"

{-# COMPLETE
  BAuthenticatedRead,
  BPrivate,
  BPublicRead,
  BPublicReadWrite,
  BucketCannedACL' #-}

instance FromText BucketCannedACL where
    parser = (BucketCannedACL' . mk) <$> takeText

instance ToText BucketCannedACL where
    toText (BucketCannedACL' ci) = original ci

instance Hashable     BucketCannedACL
instance NFData       BucketCannedACL
instance ToByteString BucketCannedACL
instance ToQuery      BucketCannedACL
instance ToHeader     BucketCannedACL

instance ToXML BucketCannedACL where
    toXML = toXMLText
