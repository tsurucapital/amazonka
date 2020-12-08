{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.SourceSelectionCriteria
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.SourceSelectionCriteria where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ReplicaModifications
import Network.AWS.S3.Types.SseKMSEncryptedObjects

-- | A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer master key (CMK) stored in AWS Key Management Service (SSE-KMS).
--
--
--
-- /See:/ 'sourceSelectionCriteria' smart constructor.
data SourceSelectionCriteria = SourceSelectionCriteria'{_sscReplicaModifications
                                                        ::
                                                        !(Maybe
                                                            ReplicaModifications),
                                                        _sscSseKMSEncryptedObjects
                                                        ::
                                                        !(Maybe
                                                            SseKMSEncryptedObjects)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'SourceSelectionCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscReplicaModifications' - A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when @Filter@ is specified), you can specify this element and set the status to @Enabled@ to replicate modifications on replicas.
--
-- * 'sscSseKMSEncryptedObjects' - A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If you include @SourceSelectionCriteria@ in the replication configuration, this element is required.
sourceSelectionCriteria :: SourceSelectionCriteria
sourceSelectionCriteria = SourceSelectionCriteria'
  { _sscReplicaModifications   = Nothing
  , _sscSseKMSEncryptedObjects = Nothing
  }

-- | A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when @Filter@ is specified), you can specify this element and set the status to @Enabled@ to replicate modifications on replicas.
sscReplicaModifications
  :: Lens' SourceSelectionCriteria (Maybe ReplicaModifications)
sscReplicaModifications =
  lens _sscReplicaModifications (\s a -> s { _sscReplicaModifications = a })

-- | A container for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If you include @SourceSelectionCriteria@ in the replication configuration, this element is required.
sscSseKMSEncryptedObjects
  :: Lens' SourceSelectionCriteria (Maybe SseKMSEncryptedObjects)
sscSseKMSEncryptedObjects =
  lens _sscSseKMSEncryptedObjects (\s a -> s { _sscSseKMSEncryptedObjects = a })

instance FromXML SourceSelectionCriteria where
  parseXML x =
    SourceSelectionCriteria'
      <$> (x .@? "ReplicaModifications")
      <*> (x .@? "SseKmsEncryptedObjects")

instance Hashable SourceSelectionCriteria where

instance NFData SourceSelectionCriteria where

instance ToXML SourceSelectionCriteria where
  toXML SourceSelectionCriteria' {..} = mconcat
    [ "ReplicaModifications" @= _sscReplicaModifications
    , "SseKmsEncryptedObjects" @= _sscSseKMSEncryptedObjects
    ]
