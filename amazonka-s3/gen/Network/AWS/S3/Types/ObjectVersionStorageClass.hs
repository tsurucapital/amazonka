{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ObjectVersionStorageClass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ObjectVersionStorageClass (
  ObjectVersionStorageClass (
    ..
    , OVSCStandard
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ObjectVersionStorageClass = ObjectVersionStorageClass' (CI
                                                               Text)
                                   deriving (Eq, Ord, Read, Show, Data,
                                             Typeable, Generic)

pattern OVSCStandard :: ObjectVersionStorageClass
pattern OVSCStandard = ObjectVersionStorageClass' "STANDARD"

{-# COMPLETE
  OVSCStandard,
  ObjectVersionStorageClass' #-}

instance FromText ObjectVersionStorageClass where
    parser = (ObjectVersionStorageClass' . mk) <$> takeText

instance ToText ObjectVersionStorageClass where
    toText (ObjectVersionStorageClass' ci) = original ci

instance Hashable     ObjectVersionStorageClass
instance NFData       ObjectVersionStorageClass
instance ToByteString ObjectVersionStorageClass
instance ToQuery      ObjectVersionStorageClass
instance ToHeader     ObjectVersionStorageClass

instance FromXML ObjectVersionStorageClass where
    parseXML = parseXMLText "ObjectVersionStorageClass"
