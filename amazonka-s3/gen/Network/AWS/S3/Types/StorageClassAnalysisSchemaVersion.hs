{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.StorageClassAnalysisSchemaVersion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.StorageClassAnalysisSchemaVersion (
  StorageClassAnalysisSchemaVersion (
    ..
    , V1
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data StorageClassAnalysisSchemaVersion = StorageClassAnalysisSchemaVersion' (CI
                                                                               Text)
                                           deriving (Eq, Ord, Read, Show, Data,
                                                     Typeable, Generic)

pattern V1 :: StorageClassAnalysisSchemaVersion
pattern V1 = StorageClassAnalysisSchemaVersion' "V_1"

{-# COMPLETE
  V1,
  StorageClassAnalysisSchemaVersion' #-}

instance FromText StorageClassAnalysisSchemaVersion where
    parser = (StorageClassAnalysisSchemaVersion' . mk) <$> takeText

instance ToText StorageClassAnalysisSchemaVersion where
    toText (StorageClassAnalysisSchemaVersion' ci) = original ci

instance Hashable     StorageClassAnalysisSchemaVersion
instance NFData       StorageClassAnalysisSchemaVersion
instance ToByteString StorageClassAnalysisSchemaVersion
instance ToQuery      StorageClassAnalysisSchemaVersion
instance ToHeader     StorageClassAnalysisSchemaVersion

instance FromXML StorageClassAnalysisSchemaVersion where
    parseXML = parseXMLText "StorageClassAnalysisSchemaVersion"

instance ToXML StorageClassAnalysisSchemaVersion where
    toXML = toXMLText
