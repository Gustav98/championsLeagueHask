{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Classificacao where

import Import
import Network.HTTP.Types.Status

import Text.Lucius
import Text.Julius
import Prelude (read)

getClassificaR :: Handler Html
getClassificaR = do

    defaultLayout $ do 
       
        addStylesheet $ StaticR css_bootstrap_css
        $(whamletFile "templates/classificacao.hamlet")
        toWidget $(luciusFile "templates/classificacao.lucius")
        
        
        
