import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

/-- Protocol for cross-repository citation resolution. -/
structure CitationProtocol where
  sourceRepo : String
  targetRepo : String
  sourceObjectId : String
  targetObjectId : String
  resolved : Prop

/-- Bridge between two repositories. -/
structure RepositoryBridge (A B : AdmissibleClass) where
  mapping : A.object → B.object
  consistencyProof : bridgeClosed A → bridgeClosed B

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse