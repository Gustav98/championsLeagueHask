{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Stats where

import Import
import Network.HTTP.Types.Status

import Text.Lucius
import Text.Julius
import Prelude (read)

getStatsR :: Handler Html
getStatsR = do

    defaultLayout $ do 
       
        addStylesheet $ StaticR css_bootstrap_css
        $(whamletFile "templates/estatisticas.hamlet")
        toWidget $(luciusFile "templates/estatisticas.lucius")
        
        
        
