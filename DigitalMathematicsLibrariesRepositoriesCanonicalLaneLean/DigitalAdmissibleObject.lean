import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

/-- A digital object that can be admitted into the library. -/
structure DigitalAdmittedObject where
  metadata : MetadataSchema
  contentHash : String
  dependencies : List DigitalAdmittedObject

/-- Witness that an object is admissible. -/
def AdmissibilityWitness (obj : DigitalAdmittedObject) : Prop :=
  MetadataSchemaValid obj.metadata ∧ obj.contentHash ≠ ""

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse