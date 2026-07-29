import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure DigitalLibraryObject where
  title : String
  source : String
  identifier : String

structure MetadataRecord where
  object : DigitalLibraryObject
  tags : List String
  description : String

def metadataClosed (A : AdmissibleClass) : Prop := True

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse