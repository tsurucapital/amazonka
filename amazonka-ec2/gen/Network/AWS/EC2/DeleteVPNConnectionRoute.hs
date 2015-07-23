{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DeleteVPNConnectionRoute
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified static route associated with a VPN connection
-- between an existing virtual private gateway and a VPN customer gateway.
-- The static route allows traffic to be routed from the virtual private
-- gateway to the VPN customer gateway.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DeleteVPNConnectionRoute.html>
module Network.AWS.EC2.DeleteVPNConnectionRoute
    (
    -- * Request
      DeleteVPNConnectionRoute
    -- ** Request constructor
    , deleteVPNConnectionRoute
    -- ** Request lenses
    , dvcrrqVPNConnectionId
    , dvcrrqDestinationCIdRBlock

    -- * Response
    , DeleteVPNConnectionRouteResponse
    -- ** Response constructor
    , deleteVPNConnectionRouteResponse
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'deleteVPNConnectionRoute' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvcrrqVPNConnectionId'
--
-- * 'dvcrrqDestinationCIdRBlock'
data DeleteVPNConnectionRoute = DeleteVPNConnectionRoute'
    { _dvcrrqVPNConnectionId      :: !Text
    , _dvcrrqDestinationCIdRBlock :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteVPNConnectionRoute' smart constructor.
deleteVPNConnectionRoute :: Text -> Text -> DeleteVPNConnectionRoute
deleteVPNConnectionRoute pVPNConnectionId_ pDestinationCIdRBlock_ =
    DeleteVPNConnectionRoute'
    { _dvcrrqVPNConnectionId = pVPNConnectionId_
    , _dvcrrqDestinationCIdRBlock = pDestinationCIdRBlock_
    }

-- | The ID of the VPN connection.
dvcrrqVPNConnectionId :: Lens' DeleteVPNConnectionRoute Text
dvcrrqVPNConnectionId = lens _dvcrrqVPNConnectionId (\ s a -> s{_dvcrrqVPNConnectionId = a});

-- | The CIDR block associated with the local subnet of the customer network.
dvcrrqDestinationCIdRBlock :: Lens' DeleteVPNConnectionRoute Text
dvcrrqDestinationCIdRBlock = lens _dvcrrqDestinationCIdRBlock (\ s a -> s{_dvcrrqDestinationCIdRBlock = a});

instance AWSRequest DeleteVPNConnectionRoute where
        type Sv DeleteVPNConnectionRoute = EC2
        type Rs DeleteVPNConnectionRoute =
             DeleteVPNConnectionRouteResponse
        request = post
        response
          = receiveNull DeleteVPNConnectionRouteResponse'

instance ToHeaders DeleteVPNConnectionRoute where
        toHeaders = const mempty

instance ToPath DeleteVPNConnectionRoute where
        toPath = const "/"

instance ToQuery DeleteVPNConnectionRoute where
        toQuery DeleteVPNConnectionRoute'{..}
          = mconcat
              ["Action" =:
                 ("DeleteVPNConnectionRoute" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "VpnConnectionId" =: _dvcrrqVPNConnectionId,
               "DestinationCidrBlock" =:
                 _dvcrrqDestinationCIdRBlock]

-- | /See:/ 'deleteVPNConnectionRouteResponse' smart constructor.
data DeleteVPNConnectionRouteResponse =
    DeleteVPNConnectionRouteResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteVPNConnectionRouteResponse' smart constructor.
deleteVPNConnectionRouteResponse :: DeleteVPNConnectionRouteResponse
deleteVPNConnectionRouteResponse = DeleteVPNConnectionRouteResponse'