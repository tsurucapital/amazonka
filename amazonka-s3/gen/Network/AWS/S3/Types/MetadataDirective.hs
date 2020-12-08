{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.MetadataDirective
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.MetadataDirective (
  MetadataDirective (
    ..
    , MDCopy
    , MDReplace
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data MetadataDirective = MetadataDirective' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern MDCopy :: MetadataDirective
pattern MDCopy = MetadataDirective' "COPY"

pattern MDReplace :: MetadataDirective
pattern MDReplace = MetadataDirective' "REPLACE"

{-# COMPLETE
  MDCopy,
  MDReplace,
  MetadataDirective' #-}

instance FromText MetadataDirective where
    parser = (MetadataDirective' . mk) <$> takeText

instance ToText MetadataDirective where
    toText (MetadataDirective' ci) = original ci

instance Hashable     MetadataDirective
instance NFData       MetadataDirective
instance ToByteString MetadataDirective
instance ToQuery      MetadataDirective
instance ToHeader     MetadataDirective

instance ToXML MetadataDirective where
    toXML = toXMLText
