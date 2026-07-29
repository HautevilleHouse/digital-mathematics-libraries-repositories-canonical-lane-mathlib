import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure RepositoryIndex where
  entries : List String
  indexedEntries : Nat
  searchable : Prop
  queryComplete : Prop

structure RepositoryIndexEvidence (R : RepositoryIndex) where
  searchableClosed : R.searchable
  queryCompleteClosed : R.queryComplete

def RepositoryIndexClosed (R : RepositoryIndex) : Prop :=
  R.searchable ∧ R.queryComplete

theorem repository_index_closed_from_evidence (R : RepositoryIndex)
    (E : RepositoryIndexEvidence R) : RepositoryIndexClosed R := by
  exact And.intro E.searchableClosed E.queryCompleteClosed

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse