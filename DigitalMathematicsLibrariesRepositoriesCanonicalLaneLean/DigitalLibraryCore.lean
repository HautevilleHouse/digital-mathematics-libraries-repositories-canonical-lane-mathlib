import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure DigitalLibraryPackage where
  repositoryId : String
  theoremCount : Nat
  objectFormalized : Prop
  accessible : Prop
  identifier : String

structure DigitalLibraryEvidence (D : DigitalLibraryPackage) where
  objectFormalizedClosed : D.objectFormalized
  accessibleClosed : D.accessible

def DigitalLibraryClosed (D : DigitalLibraryPackage) : Prop :=
  D.objectFormalized ∧ D.accessible

theorem digital_library_closed_from_evidence (D : DigitalLibraryPackage)
    (E : DigitalLibraryEvidence D) : DigitalLibraryClosed D := by
  exact And.intro E.objectFormalizedClosed E.accessibleClosed

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse