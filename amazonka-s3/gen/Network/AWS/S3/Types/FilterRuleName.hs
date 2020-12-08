{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.FilterRuleName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.FilterRuleName (
  FilterRuleName (
    ..
    , Prefix
    , Suffix
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data FilterRuleName = FilterRuleName' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Prefix :: FilterRuleName
pattern Prefix = FilterRuleName' "prefix"

pattern Suffix :: FilterRuleName
pattern Suffix = FilterRuleName' "suffix"

{-# COMPLETE
  Prefix,
  Suffix,
  FilterRuleName' #-}

instance FromText FilterRuleName where
    parser = (FilterRuleName' . mk) <$> takeText

instance ToText FilterRuleName where
    toText (FilterRuleName' ci) = original ci

instance Hashable     FilterRuleName
instance NFData       FilterRuleName
instance ToByteString FilterRuleName
instance ToQuery      FilterRuleName
instance ToHeader     FilterRuleName

instance FromXML FilterRuleName where
    parseXML = parseXMLText "FilterRuleName"

instance ToXML FilterRuleName where
    toXML = toXMLText
