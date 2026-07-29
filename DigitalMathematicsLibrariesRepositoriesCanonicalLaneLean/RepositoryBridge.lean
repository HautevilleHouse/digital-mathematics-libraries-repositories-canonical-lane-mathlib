import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure RepositoryAccess (A : AdmissibleClass) where
  repository : String
  accessible : Prop

def bridgeClosed (A : AdmissibleClass) : Prop := True

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse