{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.RestoreRequestType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.RestoreRequestType (
  RestoreRequestType (
    ..
    , Select
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data RestoreRequestType = RestoreRequestType' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Select :: RestoreRequestType
pattern Select = RestoreRequestType' "SELECT"

{-# COMPLETE
  Select,
  RestoreRequestType' #-}

instance FromText RestoreRequestType where
    parser = (RestoreRequestType' . mk) <$> takeText

instance ToText RestoreRequestType where
    toText (RestoreRequestType' ci) = original ci

instance Hashable     RestoreRequestType
instance NFData       RestoreRequestType
instance ToByteString RestoreRequestType
instance ToQuery      RestoreRequestType
instance ToHeader     RestoreRequestType

instance ToXML RestoreRequestType where
    toXML = toXMLText
