{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.JSONType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.JSONType (
  JSONType (
    ..
    , Document
    , Lines
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data JSONType = JSONType' (CI Text)
                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                            Generic)

pattern Document :: JSONType
pattern Document = JSONType' "DOCUMENT"

pattern Lines :: JSONType
pattern Lines = JSONType' "LINES"

{-# COMPLETE
  Document,
  Lines,
  JSONType' #-}

instance FromText JSONType where
    parser = (JSONType' . mk) <$> takeText

instance ToText JSONType where
    toText (JSONType' ci) = original ci

instance Hashable     JSONType
instance NFData       JSONType
instance ToByteString JSONType
instance ToQuery      JSONType
instance ToHeader     JSONType

instance ToXML JSONType where
    toXML = toXMLText
