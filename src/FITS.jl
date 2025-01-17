module FITS

export CardType, CommentCard, Comment, Continue, End, Hierarch, History, Invalid, Value
export Primary, Random, Image, Table, Bintable, IUEImage, A3DTable, Foreign, Dump
export Card, HDU, Fits
export parse

using Unitful

#  V0.1  Implement Card type. Card only handles syntax, i.e., parsing and writing, including
#        HIERARCH cards.
#  V0.2  Implement HDU typd. HDU handles value access and IO, including joining and splitting long
#        cards, mandatory and reserved keywords. Standard extensions: Image, Table, Bintable, and
#        Random Groups.
#  V0.3  Implement units, inluding date and time
#  V0.4  Implement verification
#  V0.5  Implement World-coordinate system
#  V0.6  Implement compression
#  V0.7  Implement checksums
#  V0.8  Implement Conforming extensions
#  V0.9  Implement optimizations
#  V1.0  Verify implementation meets current standard

include("card.jl")
include("hdu.jl")
include("hdu/primary.jl")
include("hdu/random.jl")
include("hdu/image.jl")
include("hdu/table.jl")
include("hdu/bintable.jl")
include("hdu/zimage.jl")
include("hdu/ztable.jl")
include("fitscore.jl")

end
