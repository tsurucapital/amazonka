{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.TaggingDirective
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.TaggingDirective (
  TaggingDirective (
    ..
    , Copy
    , Replace
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data TaggingDirective = TaggingDirective' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Copy :: TaggingDirective
pattern Copy = TaggingDirective' "COPY"

pattern Replace :: TaggingDirective
pattern Replace = TaggingDirective' "REPLACE"

{-# COMPLETE
  Copy,
  Replace,
  TaggingDirective' #-}

instance FromText TaggingDirective where
    parser = (TaggingDirective' . mk) <$> takeText

instance ToText TaggingDirective where
    toText (TaggingDirective' ci) = original ci

instance Hashable     TaggingDirective
instance NFData       TaggingDirective
instance ToByteString TaggingDirective
instance ToQuery      TaggingDirective
instance ToHeader     TaggingDirective

instance ToXML TaggingDirective where
    toXML = toXMLText
