{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicaModifications
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ReplicaModifications where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ReplicaModificationsStatus

-- | A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when @Filter@ is specified), you can specify this element and set the status to @Enabled@ to replicate modifications on replicas.
--
--
--
-- /See:/ 'replicaModifications' smart constructor.
newtype ReplicaModifications = ReplicaModifications'{_rmStatus
                                                     ::
                                                     ReplicaModificationsStatus}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'ReplicaModifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmStatus' - Specifies whether Amazon S3 replicates modifications on replicas.
replicaModifications
  :: ReplicaModificationsStatus -- ^ 'rmStatus'
  -> ReplicaModifications
replicaModifications pStatus_ = ReplicaModifications' { _rmStatus = pStatus_ }

-- | Specifies whether Amazon S3 replicates modifications on replicas.
rmStatus :: Lens' ReplicaModifications ReplicaModificationsStatus
rmStatus = lens _rmStatus (\s a -> s { _rmStatus = a })

instance FromXML ReplicaModifications where
  parseXML x = ReplicaModifications' <$> (x .@ "Status")

instance Hashable ReplicaModifications where

instance NFData ReplicaModifications where

instance ToXML ReplicaModifications where
  toXML ReplicaModifications' {..} = mconcat ["Status" @= _rmStatus]
