{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.RetryAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.RetryAction (
  RetryAction (
    ..
    , Exit
    , Retry
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RetryAction = RetryAction' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern Exit :: RetryAction
pattern Exit = RetryAction' "EXIT"

pattern Retry :: RetryAction
pattern Retry = RetryAction' "RETRY"

{-# COMPLETE
  Exit,
  Retry,
  RetryAction' #-}

instance FromText RetryAction where
    parser = (RetryAction' . mk) <$> takeText

instance ToText RetryAction where
    toText (RetryAction' ci) = original ci

instance Hashable     RetryAction
instance NFData       RetryAction
instance ToByteString RetryAction
instance ToQuery      RetryAction
instance ToHeader     RetryAction

instance ToJSON RetryAction where
    toJSON = toJSONText

instance FromJSON RetryAction where
    parseJSON = parseJSONText "RetryAction"
