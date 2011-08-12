

-- UUAGC 0.9.39.0.0 (src-ag/DeclBlocks.ag)
module DeclBlocks where
{-# LINE 2 "src-ag/DeclBlocks.ag" #-}

import Code (Decl,Expr)
{-# LINE 9 "dist/build/uuagc/uuagc-tmp/DeclBlocks.hs" #-}
-- DeclBlocks --------------------------------------------------
{-
   alternatives:
      alternative DeclBlock:
         child defs           : {[Decl]}
         child visit          : {Decl}
         child next           : DeclBlocks 
      alternative DeclTerminator:
         child defs           : {[Decl]}
         child result         : {Expr}
-}
data DeclBlocks  = DeclBlock (([Decl])) (Decl) (DeclBlocks ) 
                 | DeclTerminator (([Decl])) (Expr) 
-- DeclBlocksRoot ----------------------------------------------
{-
   alternatives:
      alternative DeclBlocksRoot:
         child blocks         : DeclBlocks 
-}
data DeclBlocksRoot  = DeclBlocksRoot (DeclBlocks ) 