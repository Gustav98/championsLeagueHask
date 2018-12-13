{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Jogos where

import Import
import Network.HTTP.Types.Status

import Text.Lucius
import Text.Julius


getJogosR :: Handler Html
getJogosR = do

    defaultLayout $ do 
       
        addStylesheet $ StaticR css_bootstrap_css
        $(whamletFile "templates/jogos.hamlet")
        toWidget $(luciusFile "templates/jogos.lucius")
        
        
        
