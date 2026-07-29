import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure DigitalObjectIdentifier where
  doiPrefix : String
  doiSuffix : String
  resolverUrl : String
  metadataSchema : MetadataSchema

default instance : Inhabited DigitalObjectIdentifier where
  default := { doiPrefix := "10.1234", doiSuffix := "example", resolverUrl := "https://doi.org", metadataSchema := default }

structure DigitalObjectIdentifierEvidence (D : DigitalObjectIdentifier) where
  doiPrefixValid : D.doiPrefix ≠ ""
  doiSuffixValid : D.doiSuffix ≠ ""
  resolverUrlValid : D.resolverUrl ≠ ""
  metadataSchemaClosed : MetadataSchemaClosed D.metadataSchema

def DigitalObjectIdentifierClosed (D : DigitalObjectIdentifier) : Prop :=
  D.doiPrefix ≠ "" ∧ D.doiSuffix ≠ "" ∧ D.resolverUrl ≠ "" ∧ MetadataSchemaClosed D.metadataSchema

theorem digital_object_identifier_closed_from_evidence (D : DigitalObjectIdentifier) (E : DigitalObjectIdentifierEvidence D) : DigitalObjectIdentifierClosed D := by
  exact And.intro E.doiPrefixValid (And.intro E.doiSuffixValid (And.intro E.resolverUrlValid E.metadataSchemaClosed))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
