import canonicalLaneMathlib.AdmissibleClass
import DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean.InteroperabilityLayer

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

/-- Crosswalk mapping between different metadata schemas. -/
structure Crosswalk (Source Target : MetadataSchema) where
  fieldMapping : String → Option String
  preservesValidity : MetadataSchemaValid Source → MetadataSchemaValid Target

/-- Bridge closed via crosswalk. -/
def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibilityWitness A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse