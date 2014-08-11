-- This program will ask the user for her name, and echo a greeting back into
-- this text box as a comment.

import Haste

main = do
  name <- prompt "Dearest user, please tell me your name"
  withElem "hastebox" $ \box -> do
    oldtext <- getProp box "value"
    setProp box "value" (oldtext ++ "\n-- Hello " ++ name)
