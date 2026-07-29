import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure RepositoryCollection where
  collectionName : String
  collectionDescription : String
  identifiers : List DigitalObjectIdentifier
  accessPolicy : String

default instance : Inhabited RepositoryCollection where
  default := { collectionName := "default", collectionDescription := "", identifiers := [], accessPolicy := "open" }

structure RepositoryCollectionEvidence (R : RepositoryCollection) where
  collectionNameValid : R.collectionName ≠ ""
  identifiersNonempty : R.identifiers ≠ []
  allIdentifiersClosed : ∀ id : R.identifiers, DigitalObjectIdentifierClosed id
  accessPolicyValid : R.accessPolicy ∈ ["open", "restricted", "closed"]

def RepositoryCollectionClosed (R : RepositoryCollection) : Prop :=
  R.collectionName ≠ "" ∧ R.identifiers ≠ [] ∧ (∀ id ∈ R.identifiers, DigitalObjectIdentifierClosed id) ∧ R.accessPolicy ∈ ["open", "restricted", "closed"]

theorem repository_collection_closed_from_evidence (R : RepositoryCollection) (E : RepositoryCollectionEvidence R) : RepositoryCollectionClosed R := by
  refine And.intro E.collectionNameValid (And.intro E.identifiersNonempty (And.intro ?_ E.accessPolicyValid))
  intro id hid
  exact E.allIdentifiersClosed ⟨id, hid⟩

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
