{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.JobStatus (
  JobStatus (
    ..
    , Failed
    , Pending
    , Runnable
    , Running
    , Starting
    , Submitted
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatus = JobStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern Failed :: JobStatus
pattern Failed = JobStatus' "FAILED"

pattern Pending :: JobStatus
pattern Pending = JobStatus' "PENDING"

pattern Runnable :: JobStatus
pattern Runnable = JobStatus' "RUNNABLE"

pattern Running :: JobStatus
pattern Running = JobStatus' "RUNNING"

pattern Starting :: JobStatus
pattern Starting = JobStatus' "STARTING"

pattern Submitted :: JobStatus
pattern Submitted = JobStatus' "SUBMITTED"

pattern Succeeded :: JobStatus
pattern Succeeded = JobStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  Pending,
  Runnable,
  Running,
  Starting,
  Submitted,
  Succeeded,
  JobStatus' #-}

instance FromText JobStatus where
    parser = (JobStatus' . mk) <$> takeText

instance ToText JobStatus where
    toText (JobStatus' ci) = original ci

instance Hashable     JobStatus
instance NFData       JobStatus
instance ToByteString JobStatus
instance ToQuery      JobStatus
instance ToHeader     JobStatus

instance ToJSON JobStatus where
    toJSON = toJSONText

instance FromJSON JobStatus where
    parseJSON = parseJSONText "JobStatus"
