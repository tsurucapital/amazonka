{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.AnalyticsS3ExportFileFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.AnalyticsS3ExportFileFormat (
  AnalyticsS3ExportFileFormat (
    ..
    , CSV
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data AnalyticsS3ExportFileFormat = AnalyticsS3ExportFileFormat' (CI
                                                                   Text)
                                     deriving (Eq, Ord, Read, Show, Data,
                                               Typeable, Generic)

pattern CSV :: AnalyticsS3ExportFileFormat
pattern CSV = AnalyticsS3ExportFileFormat' "CSV"

{-# COMPLETE
  CSV,
  AnalyticsS3ExportFileFormat' #-}

instance FromText AnalyticsS3ExportFileFormat where
    parser = (AnalyticsS3ExportFileFormat' . mk) <$> takeText

instance ToText AnalyticsS3ExportFileFormat where
    toText (AnalyticsS3ExportFileFormat' ci) = original ci

instance Hashable     AnalyticsS3ExportFileFormat
instance NFData       AnalyticsS3ExportFileFormat
instance ToByteString AnalyticsS3ExportFileFormat
instance ToQuery      AnalyticsS3ExportFileFormat
instance ToHeader     AnalyticsS3ExportFileFormat

instance FromXML AnalyticsS3ExportFileFormat where
    parseXML = parseXMLText "AnalyticsS3ExportFileFormat"

instance ToXML AnalyticsS3ExportFileFormat where
    toXML = toXMLText
