{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobDefinitionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.JobDefinitionType (
  JobDefinitionType (
    ..
    , Container
    , Multinode
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobDefinitionType = JobDefinitionType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern Container :: JobDefinitionType
pattern Container = JobDefinitionType' "container"

pattern Multinode :: JobDefinitionType
pattern Multinode = JobDefinitionType' "multinode"

{-# COMPLETE
  Container,
  Multinode,
  JobDefinitionType' #-}

instance FromText JobDefinitionType where
    parser = (JobDefinitionType' . mk) <$> takeText

instance ToText JobDefinitionType where
    toText (JobDefinitionType' ci) = original ci

instance Hashable     JobDefinitionType
instance NFData       JobDefinitionType
instance ToByteString JobDefinitionType
instance ToQuery      JobDefinitionType
instance ToHeader     JobDefinitionType

instance ToJSON JobDefinitionType where
    toJSON = toJSONText
